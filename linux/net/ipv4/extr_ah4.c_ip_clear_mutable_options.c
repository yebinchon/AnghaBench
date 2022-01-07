
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int ihl; } ;
typedef int __be32 ;


 int EINVAL ;







 int memcpy (int *,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int ip_clear_mutable_options(const struct iphdr *iph, __be32 *daddr)
{
 unsigned char *optptr = (unsigned char *)(iph+1);
 int l = iph->ihl*4 - sizeof(struct iphdr);
 int optlen;

 while (l > 0) {
  switch (*optptr) {
  case 133:
   return 0;
  case 131:
   l--;
   optptr++;
   continue;
  }
  optlen = optptr[1];
  if (optlen<2 || optlen>l)
   return -EINVAL;
  switch (*optptr) {
  case 129:
  case 0x85:
  case 134:
  case 130:
  case 0x80|21:
   break;
  case 132:
  case 128:
   if (optlen < 6)
    return -EINVAL;
   memcpy(daddr, optptr+optlen-4, 4);

  default:
   memset(optptr, 0, optlen);
  }
  l -= optlen;
  optptr += optlen;
 }
 return 0;
}
