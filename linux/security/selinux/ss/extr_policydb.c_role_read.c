
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct role_datum {scalar_t__ value; int types; int dominates; void* bounds; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef int buf ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OBJECT_R ;
 scalar_t__ OBJECT_R_VAL ;
 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 int ebitmap_read (int *,void*) ;
 int hashtab_insert (struct hashtab*,char*,struct role_datum*) ;
 struct role_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int pr_err (char*,int ,scalar_t__) ;
 int role_destroy (char*,struct role_datum*,int *) ;
 int str_read (char**,int ,void*,void*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int role_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct role_datum *role;
 int rc, to_read = 2;
 __le32 buf[3];
 u32 len;

 role = kzalloc(sizeof(*role), GFP_KERNEL);
 if (!role)
  return -ENOMEM;

 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
  to_read = 3;

 rc = next_entry(buf, fp, sizeof(buf[0]) * to_read);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 role->value = le32_to_cpu(buf[1]);
 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
  role->bounds = le32_to_cpu(buf[2]);

 rc = str_read(&key, GFP_KERNEL, fp, len);
 if (rc)
  goto bad;

 rc = ebitmap_read(&role->dominates, fp);
 if (rc)
  goto bad;

 rc = ebitmap_read(&role->types, fp);
 if (rc)
  goto bad;

 if (strcmp(key, OBJECT_R) == 0) {
  rc = -EINVAL;
  if (role->value != OBJECT_R_VAL) {
   pr_err("SELinux: Role %s has wrong value %d\n",
          OBJECT_R, role->value);
   goto bad;
  }
  rc = 0;
  goto bad;
 }

 rc = hashtab_insert(h, key, role);
 if (rc)
  goto bad;
 return 0;
bad:
 role_destroy(key, role, ((void*)0));
 return rc;
}
