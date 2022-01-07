
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hname; } ;
struct aa_profile {TYPE_1__ base; int ns; } ;


 int AA_BUG (int) ;
 int ns_cmp (int ,int ) ;
 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int profile_cmp(struct aa_profile *a, struct aa_profile *b)
{
 int res;

 AA_BUG(!a);
 AA_BUG(!b);
 AA_BUG(!a->ns);
 AA_BUG(!b->ns);
 AA_BUG(!a->base.hname);
 AA_BUG(!b->base.hname);

 if (a == b || a->base.hname == b->base.hname)
  return 0;
 res = ns_cmp(a->ns, b->ns);
 if (res)
  return res;

 return strcmp(a->base.hname, b->base.hname);
}
