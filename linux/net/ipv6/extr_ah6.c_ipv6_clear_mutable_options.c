
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int nexthdr; } ;
struct ipv6_rt_hdr {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;


 int EINVAL ;



 int XFRM_POLICY_OUT ;
 int ipv6_optlen (struct ipv6_opt_hdr*) ;
 int ipv6_rearrange_destopt (struct ipv6hdr*,struct ipv6_opt_hdr*) ;
 int ipv6_rearrange_rthdr (struct ipv6hdr*,struct ipv6_rt_hdr*) ;
 int net_dbg_ratelimited (char*,char*) ;
 int zero_out_mutable_opts (struct ipv6_opt_hdr*) ;

__attribute__((used)) static int ipv6_clear_mutable_options(struct ipv6hdr *iph, int len, int dir)
{
 union {
  struct ipv6hdr *iph;
  struct ipv6_opt_hdr *opth;
  struct ipv6_rt_hdr *rth;
  char *raw;
 } exthdr = { .iph = iph };
 char *end = exthdr.raw + len;
 int nexthdr = iph->nexthdr;

 exthdr.iph++;

 while (exthdr.raw < end) {
  switch (nexthdr) {
  case 130:
   if (dir == XFRM_POLICY_OUT)
    ipv6_rearrange_destopt(iph, exthdr.opth);

  case 129:
   if (!zero_out_mutable_opts(exthdr.opth)) {
    net_dbg_ratelimited("overrun %sopts\n",
          nexthdr == 129 ?
          "hop" : "dest");
    return -EINVAL;
   }
   break;

  case 128:
   ipv6_rearrange_rthdr(iph, exthdr.rth);
   break;

  default:
   return 0;
  }

  nexthdr = exthdr.opth->nexthdr;
  exthdr.raw += ipv6_optlen(exthdr.opth);
 }

 return 0;
}
