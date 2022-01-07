
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct policydb {struct genfs* genfs; } ;
struct TYPE_4__ {size_t sclass; } ;
struct TYPE_3__ {int * name; } ;
struct ocontext {int * context; TYPE_2__ v; TYPE_1__ u; struct ocontext* next; } ;
struct genfs {struct ocontext* head; int * fstype; struct genfs* next; } ;
typedef int __le32 ;


 int context_write (struct policydb*,int *,void*) ;
 int cpu_to_le32 (size_t) ;
 int put_entry (int *,int,int,void*) ;
 size_t strlen (int *) ;

__attribute__((used)) static int genfs_write(struct policydb *p, void *fp)
{
 struct genfs *genfs;
 struct ocontext *c;
 size_t len;
 __le32 buf[1];
 int rc;

 len = 0;
 for (genfs = p->genfs; genfs; genfs = genfs->next)
  len++;
 buf[0] = cpu_to_le32(len);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;
 for (genfs = p->genfs; genfs; genfs = genfs->next) {
  len = strlen(genfs->fstype);
  buf[0] = cpu_to_le32(len);
  rc = put_entry(buf, sizeof(u32), 1, fp);
  if (rc)
   return rc;
  rc = put_entry(genfs->fstype, 1, len, fp);
  if (rc)
   return rc;
  len = 0;
  for (c = genfs->head; c; c = c->next)
   len++;
  buf[0] = cpu_to_le32(len);
  rc = put_entry(buf, sizeof(u32), 1, fp);
  if (rc)
   return rc;
  for (c = genfs->head; c; c = c->next) {
   len = strlen(c->u.name);
   buf[0] = cpu_to_le32(len);
   rc = put_entry(buf, sizeof(u32), 1, fp);
   if (rc)
    return rc;
   rc = put_entry(c->u.name, 1, len, fp);
   if (rc)
    return rc;
   buf[0] = cpu_to_le32(c->v.sclass);
   rc = put_entry(buf, sizeof(u32), 1, fp);
   if (rc)
    return rc;
   rc = context_write(p, &c->context[0], fp);
   if (rc)
    return rc;
  }
 }
 return 0;
}
