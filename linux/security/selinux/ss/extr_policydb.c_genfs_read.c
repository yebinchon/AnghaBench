
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct policydb {struct genfs* genfs; } ;
struct TYPE_4__ {struct genfs* name; } ;
struct TYPE_3__ {scalar_t__ sclass; } ;
struct ocontext {struct ocontext* next; TYPE_2__ u; TYPE_1__ v; int * context; } ;
struct genfs {struct genfs* fstype; struct ocontext* head; struct genfs* next; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OCON_FSUSE ;
 int context_read_and_validate (int *,struct policydb*,void*) ;
 int kfree (struct genfs*) ;
 void* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int ocontext_destroy (struct ocontext*,int ) ;
 int pr_err (char*,struct genfs*,...) ;
 int str_read (struct genfs**,int ,void*,int) ;
 scalar_t__ strcmp (struct genfs*,struct genfs*) ;
 int strlen (struct genfs*) ;

__attribute__((used)) static int genfs_read(struct policydb *p, void *fp)
{
 int i, j, rc;
 u32 nel, nel2, len, len2;
 __le32 buf[1];
 struct ocontext *l, *c;
 struct ocontext *newc = ((void*)0);
 struct genfs *genfs_p, *genfs;
 struct genfs *newgenfs = ((void*)0);

 rc = next_entry(buf, fp, sizeof(u32));
 if (rc)
  return rc;
 nel = le32_to_cpu(buf[0]);

 for (i = 0; i < nel; i++) {
  rc = next_entry(buf, fp, sizeof(u32));
  if (rc)
   goto out;
  len = le32_to_cpu(buf[0]);

  rc = -ENOMEM;
  newgenfs = kzalloc(sizeof(*newgenfs), GFP_KERNEL);
  if (!newgenfs)
   goto out;

  rc = str_read(&newgenfs->fstype, GFP_KERNEL, fp, len);
  if (rc)
   goto out;

  for (genfs_p = ((void*)0), genfs = p->genfs; genfs;
       genfs_p = genfs, genfs = genfs->next) {
   rc = -EINVAL;
   if (strcmp(newgenfs->fstype, genfs->fstype) == 0) {
    pr_err("SELinux:  dup genfs fstype %s\n",
           newgenfs->fstype);
    goto out;
   }
   if (strcmp(newgenfs->fstype, genfs->fstype) < 0)
    break;
  }
  newgenfs->next = genfs;
  if (genfs_p)
   genfs_p->next = newgenfs;
  else
   p->genfs = newgenfs;
  genfs = newgenfs;
  newgenfs = ((void*)0);

  rc = next_entry(buf, fp, sizeof(u32));
  if (rc)
   goto out;

  nel2 = le32_to_cpu(buf[0]);
  for (j = 0; j < nel2; j++) {
   rc = next_entry(buf, fp, sizeof(u32));
   if (rc)
    goto out;
   len = le32_to_cpu(buf[0]);

   rc = -ENOMEM;
   newc = kzalloc(sizeof(*newc), GFP_KERNEL);
   if (!newc)
    goto out;

   rc = str_read(&newc->u.name, GFP_KERNEL, fp, len);
   if (rc)
    goto out;

   rc = next_entry(buf, fp, sizeof(u32));
   if (rc)
    goto out;

   newc->v.sclass = le32_to_cpu(buf[0]);
   rc = context_read_and_validate(&newc->context[0], p, fp);
   if (rc)
    goto out;

   for (l = ((void*)0), c = genfs->head; c;
        l = c, c = c->next) {
    rc = -EINVAL;
    if (!strcmp(newc->u.name, c->u.name) &&
        (!c->v.sclass || !newc->v.sclass ||
         newc->v.sclass == c->v.sclass)) {
     pr_err("SELinux:  dup genfs entry (%s,%s)\n",
            genfs->fstype, c->u.name);
     goto out;
    }
    len = strlen(newc->u.name);
    len2 = strlen(c->u.name);
    if (len > len2)
     break;
   }

   newc->next = c;
   if (l)
    l->next = newc;
   else
    genfs->head = newc;
   newc = ((void*)0);
  }
 }
 rc = 0;
out:
 if (newgenfs) {
  kfree(newgenfs->fstype);
  kfree(newgenfs);
 }
 ocontext_destroy(newc, OCON_FSUSE);

 return rc;
}
