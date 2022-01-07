
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_opt_hdr {int dummy; } ;
typedef int __be32 ;




 unsigned int ntohl (int ) ;

__attribute__((used)) static int tcf_csum_ipv6_hopopts(struct ipv6_opt_hdr *ip6xh, unsigned int ixhl,
     unsigned int *pl)
{
 int off, len, optlen;
 unsigned char *xh = (void *)ip6xh;

 off = sizeof(*ip6xh);
 len = ixhl - off;

 while (len > 1) {
  switch (xh[off]) {
  case 128:
   optlen = 1;
   break;
  case 129:
   optlen = xh[off + 1] + 2;
   if (optlen != 6 || len < 6 || (off & 3) != 2)

    return 0;
   *pl = ntohl(*(__be32 *)(xh + off + 2));
   goto done;
  default:
   optlen = xh[off + 1] + 2;
   if (optlen > len)

    goto done;
   break;
  }
  off += optlen;
  len -= optlen;
 }

done:
 return 1;
}
