
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int table; } ;
struct policydb {scalar_t__ policyvers; TYPE_1__ p_commons; } ;
struct hashtab {int dummy; } ;
struct TYPE_4__ {int table; void* nprim; } ;
struct class_datum {char* comkey; void* default_type; void* default_range; void* default_role; void* default_user; int validatetrans; int constraints; TYPE_2__ permissions; int comdatum; void* value; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PERM_SYMTAB_SIZE ;
 scalar_t__ POLICYDB_VERSION_DEFAULT_TYPE ;
 scalar_t__ POLICYDB_VERSION_NEW_OBJECT_DEFAULTS ;
 scalar_t__ POLICYDB_VERSION_VALIDATETRANS ;
 int cls_destroy (char*,struct class_datum*,int *) ;
 int hashtab_insert (struct hashtab*,char*,struct class_datum*) ;
 int hashtab_search (int ,char*) ;
 struct class_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int perm_read (struct policydb*,int ,void*) ;
 int pr_err (char*,char*) ;
 int read_cons_helper (struct policydb*,int *,int,int,void*) ;
 int str_read (char**,int ,void*,int) ;
 int symtab_init (TYPE_2__*,int ) ;

__attribute__((used)) static int class_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct class_datum *cladatum;
 __le32 buf[6];
 u32 len, len2, ncons, nel;
 int i, rc;

 cladatum = kzalloc(sizeof(*cladatum), GFP_KERNEL);
 if (!cladatum)
  return -ENOMEM;

 rc = next_entry(buf, fp, sizeof(u32)*6);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 len2 = le32_to_cpu(buf[1]);
 cladatum->value = le32_to_cpu(buf[2]);

 rc = symtab_init(&cladatum->permissions, PERM_SYMTAB_SIZE);
 if (rc)
  goto bad;
 cladatum->permissions.nprim = le32_to_cpu(buf[3]);
 nel = le32_to_cpu(buf[4]);

 ncons = le32_to_cpu(buf[5]);

 rc = str_read(&key, GFP_KERNEL, fp, len);
 if (rc)
  goto bad;

 if (len2) {
  rc = str_read(&cladatum->comkey, GFP_KERNEL, fp, len2);
  if (rc)
   goto bad;

  rc = -EINVAL;
  cladatum->comdatum = hashtab_search(p->p_commons.table, cladatum->comkey);
  if (!cladatum->comdatum) {
   pr_err("SELinux:  unknown common %s\n",
          cladatum->comkey);
   goto bad;
  }
 }
 for (i = 0; i < nel; i++) {
  rc = perm_read(p, cladatum->permissions.table, fp);
  if (rc)
   goto bad;
 }

 rc = read_cons_helper(p, &cladatum->constraints, ncons, 0, fp);
 if (rc)
  goto bad;

 if (p->policyvers >= POLICYDB_VERSION_VALIDATETRANS) {

  rc = next_entry(buf, fp, sizeof(u32));
  if (rc)
   goto bad;
  ncons = le32_to_cpu(buf[0]);
  rc = read_cons_helper(p, &cladatum->validatetrans,
    ncons, 1, fp);
  if (rc)
   goto bad;
 }

 if (p->policyvers >= POLICYDB_VERSION_NEW_OBJECT_DEFAULTS) {
  rc = next_entry(buf, fp, sizeof(u32) * 3);
  if (rc)
   goto bad;

  cladatum->default_user = le32_to_cpu(buf[0]);
  cladatum->default_role = le32_to_cpu(buf[1]);
  cladatum->default_range = le32_to_cpu(buf[2]);
 }

 if (p->policyvers >= POLICYDB_VERSION_DEFAULT_TYPE) {
  rc = next_entry(buf, fp, sizeof(u32) * 1);
  if (rc)
   goto bad;
  cladatum->default_type = le32_to_cpu(buf[0]);
 }

 rc = hashtab_insert(h, key, cladatum);
 if (rc)
  goto bad;

 return 0;
bad:
 cls_destroy(key, cladatum, ((void*)0));
 return rc;
}
