
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct user_datum {scalar_t__ value; } ;
struct type_datum {scalar_t__ value; } ;
struct role_datum {scalar_t__ value; } ;
struct ocontext {scalar_t__* sid; TYPE_4__* context; struct ocontext* next; } ;
struct convert_context_args {TYPE_5__* oldp; int state; TYPE_6__* newp; } ;
struct context {char* str; int len; scalar_t__ type; scalar_t__ role; scalar_t__ user; } ;
struct TYPE_13__ {int table; } ;
struct TYPE_12__ {int table; } ;
struct TYPE_11__ {int table; } ;
struct TYPE_16__ {struct ocontext** ocontexts; scalar_t__ mls_enabled; TYPE_3__ p_types; TYPE_2__ p_roles; TYPE_1__ p_users; } ;
struct TYPE_15__ {scalar_t__ mls_enabled; } ;
struct TYPE_14__ {int range; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t OCON_ISID ;
 scalar_t__ SECINITSID_UNLABELED ;
 int SECSID_NULL ;
 int SYM_ROLES ;
 int SYM_TYPES ;
 int SYM_USERS ;
 int context_destroy (struct context*) ;
 int context_init (struct context*) ;
 int context_struct_to_string (TYPE_5__*,struct context*,char**,int *) ;
 int convert_context_handle_invalid_context (int ,struct context*) ;
 void* hashtab_search (int ,int ) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int memcpy (char*,char*,int ) ;
 int mls_convert_context (TYPE_5__*,TYPE_6__*,struct context*,struct context*) ;
 int mls_range_set (struct context*,int *) ;
 int policydb_context_isvalid (TYPE_6__*,struct context*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,char*) ;
 int string_to_context_struct (TYPE_6__*,int *,char*,struct context*,int ) ;
 int sym_name (TYPE_5__*,int ,scalar_t__) ;

__attribute__((used)) static int convert_context(struct context *oldc, struct context *newc, void *p)
{
 struct convert_context_args *args;
 struct ocontext *oc;
 struct role_datum *role;
 struct type_datum *typdatum;
 struct user_datum *usrdatum;
 char *s;
 u32 len;
 int rc;

 args = p;

 if (oldc->str) {
  s = kstrdup(oldc->str, GFP_KERNEL);
  if (!s)
   return -ENOMEM;

  rc = string_to_context_struct(args->newp, ((void*)0), s,
           newc, SECSID_NULL);
  if (rc == -EINVAL) {







   memcpy(s, oldc->str, oldc->len);
   context_init(newc);
   newc->str = s;
   newc->len = oldc->len;
   return 0;
  }
  kfree(s);
  if (rc) {

   pr_err("SELinux:   Unable to map context %s, rc = %d.\n",
          oldc->str, -rc);
   return rc;
  }
  pr_info("SELinux:  Context %s became valid (mapped).\n",
   oldc->str);
  return 0;
 }

 context_init(newc);


 rc = -EINVAL;
 usrdatum = hashtab_search(args->newp->p_users.table,
      sym_name(args->oldp,
        SYM_USERS, oldc->user - 1));
 if (!usrdatum)
  goto bad;
 newc->user = usrdatum->value;


 rc = -EINVAL;
 role = hashtab_search(args->newp->p_roles.table,
         sym_name(args->oldp, SYM_ROLES, oldc->role - 1));
 if (!role)
  goto bad;
 newc->role = role->value;


 rc = -EINVAL;
 typdatum = hashtab_search(args->newp->p_types.table,
      sym_name(args->oldp,
        SYM_TYPES, oldc->type - 1));
 if (!typdatum)
  goto bad;
 newc->type = typdatum->value;


 if (args->oldp->mls_enabled && args->newp->mls_enabled) {
  rc = mls_convert_context(args->oldp, args->newp, oldc, newc);
  if (rc)
   goto bad;
 } else if (!args->oldp->mls_enabled && args->newp->mls_enabled) {







  oc = args->newp->ocontexts[OCON_ISID];
  while (oc && oc->sid[0] != SECINITSID_UNLABELED)
   oc = oc->next;
  rc = -EINVAL;
  if (!oc) {
   pr_err("SELinux:  unable to look up"
    " the initial SIDs list\n");
   goto bad;
  }
  rc = mls_range_set(newc, &oc->context[0].range);
  if (rc)
   goto bad;
 }


 if (!policydb_context_isvalid(args->newp, newc)) {
  rc = convert_context_handle_invalid_context(args->state, oldc);
  if (rc)
   goto bad;
 }

 return 0;
bad:

 rc = context_struct_to_string(args->oldp, oldc, &s, &len);
 if (rc)
  return rc;
 context_destroy(newc);
 newc->str = s;
 newc->len = len;
 pr_info("SELinux:  Context %s became invalid (unmapped).\n",
  newc->str);
 return 0;
}
