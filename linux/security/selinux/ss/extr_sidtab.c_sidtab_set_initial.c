
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sidtab_isid_entry {int set; int context; } ;
struct sidtab {struct sidtab_isid_entry* isids; } ;
struct context {int dummy; } ;


 int EINVAL ;
 int SECINITSID_NUM ;
 int context_cpy (int *,struct context*) ;

int sidtab_set_initial(struct sidtab *s, u32 sid, struct context *context)
{
 struct sidtab_isid_entry *entry;
 int rc;

 if (sid == 0 || sid > SECINITSID_NUM)
  return -EINVAL;

 entry = &s->isids[sid - 1];

 rc = context_cpy(&entry->context, context);
 if (rc)
  return rc;

 entry->set = 1;
 return 0;
}
