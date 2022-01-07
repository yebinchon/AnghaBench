
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct net {int user_ns; } ;
struct iphdr {int dummy; } ;
struct ip_options {unsigned char* __data; int optlen; int is_changed; int srr; unsigned char faddr; int is_strictroute; int rr; int rr_needaddr; int ts; int ts_needtime; int ts_needaddr; int router_alert; int cipso; } ;
typedef unsigned char __be32 ;


 int CAP_NET_RAW ;
 int EINVAL ;
 int INADDR_ANY ;
 int RTN_UNICAST ;
 int cipso_v4_validate (struct sk_buff*,unsigned char**) ;
 unsigned char htonl (int) ;
 int inet_addr_type (struct net*,unsigned char) ;
 unsigned char inet_current_timestamp () ;
 int * ip_hdr (struct sk_buff*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int ns_capable (int ,int ) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int spec_dst_fill (unsigned char*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int __ip_options_compile(struct net *net,
    struct ip_options *opt, struct sk_buff *skb,
    __be32 *info)
{
 __be32 spec_dst = htonl(INADDR_ANY);
 unsigned char *pp_ptr = ((void*)0);
 struct rtable *rt = ((void*)0);
 unsigned char *optptr;
 unsigned char *iph;
 int optlen, l;

 if (skb) {
  rt = skb_rtable(skb);
  optptr = (unsigned char *)&(ip_hdr(skb)[1]);
 } else
  optptr = opt->__data;
 iph = optptr - sizeof(struct iphdr);

 for (l = opt->optlen; l > 0; ) {
  switch (*optptr) {
  case 139:
   for (optptr++, l--; l > 0; optptr++, l--) {
    if (*optptr != 139) {
     *optptr = 139;
     opt->is_changed = 1;
    }
   }
   goto eol;
  case 137:
   l--;
   optptr++;
   continue;
  }
  if (unlikely(l < 2)) {
   pp_ptr = optptr;
   goto error;
  }
  optlen = optptr[1];
  if (optlen < 2 || optlen > l) {
   pp_ptr = optptr;
   goto error;
  }
  switch (*optptr) {
  case 132:
  case 138:
   if (optlen < 3) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 4) {
    pp_ptr = optptr + 2;
    goto error;
   }

   if (opt->srr) {
    pp_ptr = optptr;
    goto error;
   }
   if (!skb) {
    if (optptr[2] != 4 || optlen < 7 || ((optlen-3) & 3)) {
     pp_ptr = optptr + 1;
     goto error;
    }
    memcpy(&opt->faddr, &optptr[3], 4);
    if (optlen > 7)
     memmove(&optptr[3], &optptr[7], optlen-7);
   }
   opt->is_strictroute = (optptr[0] == 132);
   opt->srr = optptr - iph;
   break;
  case 135:
   if (opt->rr) {
    pp_ptr = optptr;
    goto error;
   }
   if (optlen < 3) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 4) {
    pp_ptr = optptr + 2;
    goto error;
   }
   if (optptr[2] <= optlen) {
    if (optptr[2]+3 > optlen) {
     pp_ptr = optptr + 2;
     goto error;
    }
    if (rt) {
     spec_dst_fill(&spec_dst, skb);
     memcpy(&optptr[optptr[2]-1], &spec_dst, 4);
     opt->is_changed = 1;
    }
    optptr[2] += 4;
    opt->rr_needaddr = 1;
   }
   opt->rr = optptr - iph;
   break;
  case 131:
   if (opt->ts) {
    pp_ptr = optptr;
    goto error;
   }
   if (optlen < 4) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 5) {
    pp_ptr = optptr + 2;
    goto error;
   }
   if (optptr[2] <= optlen) {
    unsigned char *timeptr = ((void*)0);
    if (optptr[2]+3 > optlen) {
     pp_ptr = optptr + 2;
     goto error;
    }
    switch (optptr[3]&0xF) {
    case 128:
     if (skb)
      timeptr = &optptr[optptr[2]-1];
     opt->ts_needtime = 1;
     optptr[2] += 4;
     break;
    case 129:
     if (optptr[2]+7 > optlen) {
      pp_ptr = optptr + 2;
      goto error;
     }
     if (rt) {
      spec_dst_fill(&spec_dst, skb);
      memcpy(&optptr[optptr[2]-1], &spec_dst, 4);
      timeptr = &optptr[optptr[2]+3];
     }
     opt->ts_needaddr = 1;
     opt->ts_needtime = 1;
     optptr[2] += 8;
     break;
    case 130:
     if (optptr[2]+7 > optlen) {
      pp_ptr = optptr + 2;
      goto error;
     }
     {
      __be32 addr;
      memcpy(&addr, &optptr[optptr[2]-1], 4);
      if (inet_addr_type(net, addr) == RTN_UNICAST)
       break;
      if (skb)
       timeptr = &optptr[optptr[2]+3];
     }
     opt->ts_needtime = 1;
     optptr[2] += 8;
     break;
    default:
     if (!skb && !ns_capable(net->user_ns, CAP_NET_RAW)) {
      pp_ptr = optptr + 3;
      goto error;
     }
     break;
    }
    if (timeptr) {
     __be32 midtime;

     midtime = inet_current_timestamp();
     memcpy(timeptr, &midtime, 4);
     opt->is_changed = 1;
    }
   } else if ((optptr[3]&0xF) != 130) {
    unsigned int overflow = optptr[3]>>4;
    if (overflow == 15) {
     pp_ptr = optptr + 3;
     goto error;
    }
    if (skb) {
     optptr[3] = (optptr[3]&0xF)|((overflow+1)<<4);
     opt->is_changed = 1;
    }
   }
   opt->ts = optptr - iph;
   break;
  case 136:
   if (optlen < 4) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] == 0 && optptr[3] == 0)
    opt->router_alert = optptr - iph;
   break;
  case 140:
   if ((!skb && !ns_capable(net->user_ns, CAP_NET_RAW)) || opt->cipso) {
    pp_ptr = optptr;
    goto error;
   }
   opt->cipso = optptr - iph;
   if (cipso_v4_validate(skb, &optptr)) {
    pp_ptr = optptr;
    goto error;
   }
   break;
  case 134:
  case 133:
  default:
   if (!skb && !ns_capable(net->user_ns, CAP_NET_RAW)) {
    pp_ptr = optptr;
    goto error;
   }
   break;
  }
  l -= optlen;
  optptr += optlen;
 }

eol:
 if (!pp_ptr)
  return 0;

error:
 if (info)
  *info = htonl((pp_ptr-iph)<<24);
 return -EINVAL;
}
