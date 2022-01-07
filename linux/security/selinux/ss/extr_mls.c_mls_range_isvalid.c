
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {int dummy; } ;
struct mls_range {int * level; } ;


 scalar_t__ mls_level_dom (int *,int *) ;
 scalar_t__ mls_level_isvalid (struct policydb*,int *) ;

int mls_range_isvalid(struct policydb *p, struct mls_range *r)
{
 return (mls_level_isvalid(p, &r->level[0]) &&
  mls_level_isvalid(p, &r->level[1]) &&
  mls_level_dom(&r->level[1], &r->level[0]));
}
