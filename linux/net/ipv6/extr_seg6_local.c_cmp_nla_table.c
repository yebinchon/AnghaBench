
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {scalar_t__ table; } ;



__attribute__((used)) static int cmp_nla_table(struct seg6_local_lwt *a, struct seg6_local_lwt *b)
{
 if (a->table != b->table)
  return 1;

 return 0;
}
