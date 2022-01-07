
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int nh6; } ;
struct in6_addr {int dummy; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int cmp_nla_nh6(struct seg6_local_lwt *a, struct seg6_local_lwt *b)
{
 return memcmp(&a->nh6, &b->nh6, sizeof(struct in6_addr));
}
