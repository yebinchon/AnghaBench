
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u16 ;
struct sockaddr {int sa_family; } ;


 int EINVAL ;
 int pfkey_sockaddr_extract (struct sockaddr*,int *) ;
 int pfkey_sockaddr_len (int) ;
 int pfkey_sockaddr_pair_size (int ) ;

__attribute__((used)) static int parse_sockaddr_pair(struct sockaddr *sa, int ext_len,
          xfrm_address_t *saddr, xfrm_address_t *daddr,
          u16 *family)
{
 int af, socklen;

 if (ext_len < 2 || ext_len < pfkey_sockaddr_pair_size(sa->sa_family))
  return -EINVAL;

 af = pfkey_sockaddr_extract(sa, saddr);
 if (!af)
  return -EINVAL;

 socklen = pfkey_sockaddr_len(af);
 if (pfkey_sockaddr_extract((struct sockaddr *) (((u8 *)sa) + socklen),
       daddr) != af)
  return -EINVAL;

 *family = af;
 return 0;
}
