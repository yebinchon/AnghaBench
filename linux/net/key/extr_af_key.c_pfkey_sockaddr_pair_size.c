
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_family_t ;


 int PFKEY_ALIGN8 (int) ;
 int pfkey_sockaddr_len (int ) ;

__attribute__((used)) static int pfkey_sockaddr_pair_size(sa_family_t family)
{
 return PFKEY_ALIGN8(pfkey_sockaddr_len(family) * 2);
}
