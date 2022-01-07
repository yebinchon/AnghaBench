
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct TYPE_2__ {int table; void* nprim; } ;
struct common_datum {TYPE_1__ permissions; void* value; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PERM_SYMTAB_SIZE ;
 int common_destroy (char*,struct common_datum*,int *) ;
 int hashtab_insert (struct hashtab*,char*,struct common_datum*) ;
 struct common_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int perm_read (struct policydb*,int ,void*) ;
 int str_read (char**,int ,void*,int) ;
 int symtab_init (TYPE_1__*,int ) ;

__attribute__((used)) static int common_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct common_datum *comdatum;
 __le32 buf[4];
 u32 len, nel;
 int i, rc;

 comdatum = kzalloc(sizeof(*comdatum), GFP_KERNEL);
 if (!comdatum)
  return -ENOMEM;

 rc = next_entry(buf, fp, sizeof buf);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 comdatum->value = le32_to_cpu(buf[1]);

 rc = symtab_init(&comdatum->permissions, PERM_SYMTAB_SIZE);
 if (rc)
  goto bad;
 comdatum->permissions.nprim = le32_to_cpu(buf[2]);
 nel = le32_to_cpu(buf[3]);

 rc = str_read(&key, GFP_KERNEL, fp, len);
 if (rc)
  goto bad;

 for (i = 0; i < nel; i++) {
  rc = perm_read(p, comdatum->permissions.table, fp);
  if (rc)
   goto bad;
 }

 rc = hashtab_insert(h, key, comdatum);
 if (rc)
  goto bad;
 return 0;
bad:
 common_destroy(key, comdatum, ((void*)0));
 return rc;
}
