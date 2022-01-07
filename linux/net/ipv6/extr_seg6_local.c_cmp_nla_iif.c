
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {scalar_t__ iif; } ;



__attribute__((used)) static int cmp_nla_iif(struct seg6_local_lwt *a, struct seg6_local_lwt *b)
{
 if (a->iif != b->iif)
  return 1;

 return 0;
}
