
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_krule {scalar_t__ flags; scalar_t__ pflags; scalar_t__ listnr; scalar_t__ action; int field_count; scalar_t__* mask; TYPE_1__* fields; int exe; int filterkey; int tree; int watch; } ;
struct TYPE_2__ {int type; scalar_t__ op; int val; int gid; int uid; int lsm_str; } ;


 int AUDIT_BITMASK_SIZE ;
 int audit_mark_path (int ) ;
 int audit_tree_path (int ) ;
 int audit_watch_path (int ) ;
 int gid_eq (int ,int ) ;
 int strcmp (int ,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int audit_compare_rule(struct audit_krule *a, struct audit_krule *b)
{
 int i;

 if (a->flags != b->flags ||
     a->pflags != b->pflags ||
     a->listnr != b->listnr ||
     a->action != b->action ||
     a->field_count != b->field_count)
  return 1;

 for (i = 0; i < a->field_count; i++) {
  if (a->fields[i].type != b->fields[i].type ||
      a->fields[i].op != b->fields[i].op)
   return 1;

  switch(a->fields[i].type) {
  case 131:
  case 134:
  case 132:
  case 133:
  case 135:
  case 137:
  case 140:
  case 139:
  case 141:
  case 142:
   if (strcmp(a->fields[i].lsm_str, b->fields[i].lsm_str))
    return 1;
   break;
  case 128:
   if (strcmp(audit_watch_path(a->watch),
       audit_watch_path(b->watch)))
    return 1;
   break;
  case 152:
   if (strcmp(audit_tree_path(a->tree),
       audit_tree_path(b->tree)))
    return 1;
   break;
  case 148:

   if (strcmp(a->filterkey, b->filterkey))
    return 1;
   break;
  case 149:

   if (strcmp(audit_mark_path(a->exe),
       audit_mark_path(b->exe)))
    return 1;
   break;
  case 129:
  case 150:
  case 130:
  case 146:
  case 144:
  case 138:
   if (!uid_eq(a->fields[i].uid, b->fields[i].uid))
    return 1;
   break;
  case 145:
  case 151:
  case 136:
  case 147:
  case 143:
   if (!gid_eq(a->fields[i].gid, b->fields[i].gid))
    return 1;
   break;
  default:
   if (a->fields[i].val != b->fields[i].val)
    return 1;
  }
 }

 for (i = 0; i < AUDIT_BITMASK_SIZE; i++)
  if (a->mask[i] != b->mask[i])
   return 1;

 return 0;
}
