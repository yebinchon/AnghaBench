
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6_opt_hdr {int dummy; } ;



 int ipv6_optlen (struct ipv6_opt_hdr*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static bool zero_out_mutable_opts(struct ipv6_opt_hdr *opthdr)
{
 u8 *opt = (u8 *)opthdr;
 int len = ipv6_optlen(opthdr);
 int off = 0;
 int optlen = 0;

 off += 2;
 len -= 2;

 while (len > 0) {

  switch (opt[off]) {

  case 128:
   optlen = 1;
   break;
  default:
   if (len < 2)
    goto bad;
   optlen = opt[off+1]+2;
   if (len < optlen)
    goto bad;
   if (opt[off] & 0x20)
    memset(&opt[off+2], 0, opt[off+1]);
   break;
  }

  off += optlen;
  len -= optlen;
 }
 if (len == 0)
  return 1;

bad:
 return 0;
}
