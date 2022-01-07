
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_opt_hdr {int dummy; } ;


 int CMSG_ALIGN (int ) ;
 int ipv6_optlen (struct ipv6_opt_hdr*) ;
 int memcpy (char*,struct ipv6_opt_hdr*,int ) ;

__attribute__((used)) static void ipv6_renew_option(int renewtype,
         struct ipv6_opt_hdr **dest,
         struct ipv6_opt_hdr *old,
         struct ipv6_opt_hdr *new,
         int newtype, char **p)
{
 struct ipv6_opt_hdr *src;

 src = (renewtype == newtype ? new : old);
 if (!src)
  return;

 memcpy(*p, src, ipv6_optlen(src));
 *dest = (struct ipv6_opt_hdr *)*p;
 *p += CMSG_ALIGN(ipv6_optlen(*dest));
}
