
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct audit_krule {int field_count; char* filterkey; scalar_t__ watch; scalar_t__ exe; TYPE_1__* fields; int tree; int inode_f; int buflen; int prio; int * mask; int action; int listnr; int pflags; int flags; } ;
struct audit_field {int dummy; } ;
struct audit_entry {struct audit_krule rule; } ;
struct TYPE_5__ {int type; } ;


 int AUDIT_BITMASK_SIZE ;
 int ENOMEM ;
 struct audit_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int audit_dupe_exe (struct audit_krule*,struct audit_krule*) ;
 int audit_dupe_lsm_field (TYPE_1__*,TYPE_1__*) ;
 int audit_free_rule (struct audit_entry*) ;
 int audit_get_watch (scalar_t__) ;
 struct audit_entry* audit_init_entry (int) ;
 int audit_remove_mark (scalar_t__) ;
 char* kstrdup (char*,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

struct audit_entry *audit_dupe_rule(struct audit_krule *old)
{
 u32 fcount = old->field_count;
 struct audit_entry *entry;
 struct audit_krule *new;
 char *fk;
 int i, err = 0;

 entry = audit_init_entry(fcount);
 if (unlikely(!entry))
  return ERR_PTR(-ENOMEM);

 new = &entry->rule;
 new->flags = old->flags;
 new->pflags = old->pflags;
 new->listnr = old->listnr;
 new->action = old->action;
 for (i = 0; i < AUDIT_BITMASK_SIZE; i++)
  new->mask[i] = old->mask[i];
 new->prio = old->prio;
 new->buflen = old->buflen;
 new->inode_f = old->inode_f;
 new->field_count = old->field_count;
 new->tree = old->tree;
 memcpy(new->fields, old->fields, sizeof(struct audit_field) * fcount);



 for (i = 0; i < fcount; i++) {
  switch (new->fields[i].type) {
  case 128:
  case 131:
  case 129:
  case 130:
  case 132:
  case 133:
  case 135:
  case 134:
  case 136:
  case 137:
   err = audit_dupe_lsm_field(&new->fields[i],
             &old->fields[i]);
   break;
  case 138:
   fk = kstrdup(old->filterkey, GFP_KERNEL);
   if (unlikely(!fk))
    err = -ENOMEM;
   else
    new->filterkey = fk;
   break;
  case 139:
   err = audit_dupe_exe(new, old);
   break;
  }
  if (err) {
   if (new->exe)
    audit_remove_mark(new->exe);
   audit_free_rule(entry);
   return ERR_PTR(err);
  }
 }

 if (old->watch) {
  audit_get_watch(old->watch);
  new->watch = old->watch;
 }

 return entry;
}
