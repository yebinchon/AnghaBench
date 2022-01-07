
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {int mark; int sk; int len; } ;
struct TYPE_3__ {unsigned int logflags; } ;
struct TYPE_4__ {TYPE_1__ log; } ;
struct nf_loginfo {scalar_t__ type; TYPE_2__ u; } ;
struct nf_log_buf {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
struct ipv6_opt_hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
struct ip_esp_hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
struct ip_auth_hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
struct icmp6hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
struct frag_hdr {int payload_len; int nexthdr; int frag_off; int const icmp6_type; int icmp6_identifier; int icmp6_sequence; int icmp6_mtu; int icmp6_pointer; int icmp6_code; int spi; int identification; int hop_limit; int daddr; int saddr; } ;
typedef int _ip6h ;
typedef int _icmp6h ;
typedef int _hdr ;
typedef int _fhdr ;
typedef int _esph ;
typedef int _ahdr ;
typedef int __be32 ;
 int NEXTHDR_NONE ;
 unsigned int NF_LOG_DEFAULT_MASK ;
 unsigned int NF_LOG_IPOPT ;
 scalar_t__ NF_LOG_TYPE_LOG ;
 unsigned int NF_LOG_UID ;
 int htons (int) ;
 unsigned int ipv6_authlen (struct ipv6hdr const*) ;
 unsigned int ipv6_optlen (struct ipv6hdr const*) ;
 scalar_t__ nf_ip6_ext_hdr (int) ;
 int nf_log_buf_add (struct nf_log_buf*,char*,...) ;
 int nf_log_dump_sk_uid_gid (struct net*,struct nf_log_buf*,int ) ;
 int nf_log_dump_tcp_header (struct nf_log_buf*,struct sk_buff const*,int,int,unsigned int,unsigned int) ;
 int nf_log_dump_udp_header (struct nf_log_buf*,struct sk_buff const*,int,int,unsigned int) ;
 int ntohl (int ) ;
 int ntohs (int) ;
 struct ipv6hdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct ipv6hdr*) ;

__attribute__((used)) static void dump_ipv6_packet(struct net *net, struct nf_log_buf *m,
        const struct nf_loginfo *info,
        const struct sk_buff *skb, unsigned int ip6hoff,
        int recurse)
{
 u_int8_t currenthdr;
 int fragment;
 struct ipv6hdr _ip6h;
 const struct ipv6hdr *ih;
 unsigned int ptr;
 unsigned int hdrlen = 0;
 unsigned int logflags;

 if (info->type == NF_LOG_TYPE_LOG)
  logflags = info->u.log.logflags;
 else
  logflags = NF_LOG_DEFAULT_MASK;

 ih = skb_header_pointer(skb, ip6hoff, sizeof(_ip6h), &_ip6h);
 if (ih == ((void*)0)) {
  nf_log_buf_add(m, "TRUNCATED");
  return;
 }


 nf_log_buf_add(m, "SRC=%pI6 DST=%pI6 ", &ih->saddr, &ih->daddr);


 nf_log_buf_add(m, "LEN=%zu TC=%u HOPLIMIT=%u FLOWLBL=%u ",
        ntohs(ih->payload_len) + sizeof(struct ipv6hdr),
        (ntohl(*(__be32 *)ih) & 0x0ff00000) >> 20,
        ih->hop_limit,
        (ntohl(*(__be32 *)ih) & 0x000fffff));

 fragment = 0;
 ptr = ip6hoff + sizeof(struct ipv6hdr);
 currenthdr = ih->nexthdr;
 while (currenthdr != NEXTHDR_NONE && nf_ip6_ext_hdr(currenthdr)) {
  struct ipv6_opt_hdr _hdr;
  const struct ipv6_opt_hdr *hp;

  hp = skb_header_pointer(skb, ptr, sizeof(_hdr), &_hdr);
  if (hp == ((void*)0)) {
   nf_log_buf_add(m, "TRUNCATED");
   return;
  }


  if (logflags & NF_LOG_IPOPT)
   nf_log_buf_add(m, "OPT ( ");

  switch (currenthdr) {
  case 134: {
   struct frag_hdr _fhdr;
   const struct frag_hdr *fh;

   nf_log_buf_add(m, "FRAG:");
   fh = skb_header_pointer(skb, ptr, sizeof(_fhdr),
      &_fhdr);
   if (fh == ((void*)0)) {
    nf_log_buf_add(m, "TRUNCATED ");
    return;
   }


   nf_log_buf_add(m, "%u ", ntohs(fh->frag_off) & 0xFFF8);


   if (fh->frag_off & htons(0x0001))
    nf_log_buf_add(m, "INCOMPLETE ");

   nf_log_buf_add(m, "ID:%08x ",
           ntohl(fh->identification));

   if (ntohs(fh->frag_off) & 0xFFF8)
    fragment = 1;

   hdrlen = 8;

   break;
  }
  case 136:
  case 131:
  case 133:
   if (fragment) {
    if (logflags & NF_LOG_IPOPT)
     nf_log_buf_add(m, ")");
    return;
   }
   hdrlen = ipv6_optlen(hp);
   break;

  case 137:
   if (logflags & NF_LOG_IPOPT) {
    struct ip_auth_hdr _ahdr;
    const struct ip_auth_hdr *ah;


    nf_log_buf_add(m, "AH ");

    if (fragment) {
     nf_log_buf_add(m, ")");
     return;
    }

    ah = skb_header_pointer(skb, ptr, sizeof(_ahdr),
       &_ahdr);
    if (ah == ((void*)0)) {




     nf_log_buf_add(m, "INCOMPLETE [%u bytes] )",
             skb->len - ptr);
     return;
    }


    nf_log_buf_add(m, "SPI=0x%x ", ntohl(ah->spi));

   }

   hdrlen = ipv6_authlen(hp);
   break;
  case 135:
   if (logflags & NF_LOG_IPOPT) {
    struct ip_esp_hdr _esph;
    const struct ip_esp_hdr *eh;


    nf_log_buf_add(m, "ESP ");

    if (fragment) {
     nf_log_buf_add(m, ")");
     return;
    }




    eh = skb_header_pointer(skb, ptr, sizeof(_esph),
       &_esph);
    if (eh == ((void*)0)) {
     nf_log_buf_add(m, "INCOMPLETE [%u bytes] )",
             skb->len - ptr);
     return;
    }


    nf_log_buf_add(m, "SPI=0x%x )",
            ntohl(eh->spi));
   }
   return;
  default:

   nf_log_buf_add(m, "Unknown Ext Hdr %u", currenthdr);
   return;
  }
  if (logflags & NF_LOG_IPOPT)
   nf_log_buf_add(m, ") ");

  currenthdr = hp->nexthdr;
  ptr += hdrlen;
 }

 switch (currenthdr) {
 case 130:
  if (nf_log_dump_tcp_header(m, skb, currenthdr, fragment,
        ptr, logflags))
   return;
  break;
 case 129:
 case 128:
  if (nf_log_dump_udp_header(m, skb, currenthdr, fragment, ptr))
   return;
  break;
 case 132: {
  struct icmp6hdr _icmp6h;
  const struct icmp6hdr *ic;


  nf_log_buf_add(m, "PROTO=ICMPv6 ");

  if (fragment)
   break;


  ic = skb_header_pointer(skb, ptr, sizeof(_icmp6h), &_icmp6h);
  if (ic == ((void*)0)) {
   nf_log_buf_add(m, "INCOMPLETE [%u bytes] ",
           skb->len - ptr);
   return;
  }


  nf_log_buf_add(m, "TYPE=%u CODE=%u ",
          ic->icmp6_type, ic->icmp6_code);

  switch (ic->icmp6_type) {
  case 144:
  case 145:

   nf_log_buf_add(m, "ID=%u SEQ=%u ",
    ntohs(ic->icmp6_identifier),
    ntohs(ic->icmp6_sequence));
   break;
  case 143:
  case 141:
  case 142:
   break;

  case 140:

   nf_log_buf_add(m, "POINTER=%08x ",
           ntohl(ic->icmp6_pointer));

  case 146:
  case 139:
  case 138:

   if (recurse) {
    nf_log_buf_add(m, "[");
    dump_ipv6_packet(net, m, info, skb,
       ptr + sizeof(_icmp6h), 0);
    nf_log_buf_add(m, "] ");
   }


   if (ic->icmp6_type == 139) {
    nf_log_buf_add(m, "MTU=%u ",
            ntohl(ic->icmp6_mtu));
   }
  }
  break;
 }

 default:
  nf_log_buf_add(m, "PROTO=%u ", currenthdr);
 }


 if ((logflags & NF_LOG_UID) && recurse)
  nf_log_dump_sk_uid_gid(net, m, skb->sk);


 if (recurse && skb->mark)
  nf_log_buf_add(m, "MARK=0x%x ", skb->mark);
}
