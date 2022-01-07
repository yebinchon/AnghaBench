
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int table; } ;
struct policydb {scalar_t__ policyvers; TYPE_3__ p_types; TYPE_2__ p_roles; TYPE_1__ p_users; } ;


 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 int hashtab_map (int ,int ,struct policydb*) ;
 int role_bounds_sanity_check ;
 int type_bounds_sanity_check ;
 int user_bounds_sanity_check ;

__attribute__((used)) static int policydb_bounds_sanity_check(struct policydb *p)
{
 int rc;

 if (p->policyvers < POLICYDB_VERSION_BOUNDARY)
  return 0;

 rc = hashtab_map(p->p_users.table,
    user_bounds_sanity_check, p);
 if (rc)
  return rc;

 rc = hashtab_map(p->p_roles.table,
    role_bounds_sanity_check, p);
 if (rc)
  return rc;

 rc = hashtab_map(p->p_types.table,
    type_bounds_sanity_check, p);
 if (rc)
  return rc;

 return 0;
}
