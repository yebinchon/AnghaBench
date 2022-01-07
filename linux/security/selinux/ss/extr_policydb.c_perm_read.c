
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct policydb {int dummy; } ;
struct perm_datum {void* value; } ;
struct hashtab {int dummy; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hashtab_insert (struct hashtab*,char*,struct perm_datum*) ;
 struct perm_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int perm_destroy (char*,struct perm_datum*,int *) ;
 int str_read (char**,int ,void*,void*) ;

__attribute__((used)) static int perm_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct perm_datum *perdatum;
 int rc;
 __le32 buf[2];
 u32 len;

 perdatum = kzalloc(sizeof(*perdatum), GFP_KERNEL);
 if (!perdatum)
  return -ENOMEM;

 rc = next_entry(buf, fp, sizeof buf);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 perdatum->value = le32_to_cpu(buf[1]);

 rc = str_read(&key, GFP_KERNEL, fp, len);
 if (rc)
  goto bad;

 rc = hashtab_insert(h, key, perdatum);
 if (rc)
  goto bad;

 return 0;
bad:
 perm_destroy(key, perdatum, ((void*)0));
 return rc;
}
