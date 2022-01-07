
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_datum {int range; } ;
struct TYPE_2__ {int nprim; } ;
struct policydb {struct user_datum** user_val_to_struct; TYPE_1__ p_users; int mls_enabled; } ;
struct context {scalar_t__ role; int user; int range; } ;


 scalar_t__ OBJECT_R_VAL ;
 int mls_range_contains (int ,int ) ;
 int mls_range_isvalid (struct policydb*,int *) ;

int mls_context_isvalid(struct policydb *p, struct context *c)
{
 struct user_datum *usrdatum;

 if (!p->mls_enabled)
  return 1;

 if (!mls_range_isvalid(p, &c->range))
  return 0;

 if (c->role == OBJECT_R_VAL)
  return 1;




 if (!c->user || c->user > p->p_users.nprim)
  return 0;
 usrdatum = p->user_val_to_struct[c->user - 1];
 if (!mls_range_contains(usrdatum->range, c->range))
  return 0;

 return 1;
}
