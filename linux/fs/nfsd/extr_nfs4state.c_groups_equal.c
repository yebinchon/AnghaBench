
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int ngroups; int * gid; } ;


 int gid_eq (int ,int ) ;

__attribute__((used)) static bool groups_equal(struct group_info *g1, struct group_info *g2)
{
 int i;

 if (g1->ngroups != g2->ngroups)
  return 0;
 for (i=0; i<g1->ngroups; i++)
  if (!gid_eq(g1->gid[i], g2->gid[i]))
   return 0;
 return 1;
}
