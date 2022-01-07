
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hname; } ;
struct aa_ns {int level; TYPE_1__ base; } ;


 int AA_BUG (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int ns_cmp(struct aa_ns *a, struct aa_ns *b)
{
 int res;

 AA_BUG(!a);
 AA_BUG(!b);
 AA_BUG(!a->base.hname);
 AA_BUG(!b->base.hname);

 if (a == b)
  return 0;

 res = a->level - b->level;
 if (res)
  return res;

 return strcmp(a->base.hname, b->base.hname);
}
