
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct cat_datum {void* isalias; void* value; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int cat_destroy (char*,struct cat_datum*,int *) ;
 int hashtab_insert (struct hashtab*,char*,struct cat_datum*) ;
 struct cat_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int str_read (char**,int ,void*,void*) ;

__attribute__((used)) static int cat_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct cat_datum *catdatum;
 int rc;
 __le32 buf[3];
 u32 len;

 catdatum = kzalloc(sizeof(*catdatum), GFP_ATOMIC);
 if (!catdatum)
  return -ENOMEM;

 rc = next_entry(buf, fp, sizeof buf);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 catdatum->value = le32_to_cpu(buf[1]);
 catdatum->isalias = le32_to_cpu(buf[2]);

 rc = str_read(&key, GFP_ATOMIC, fp, len);
 if (rc)
  goto bad;

 rc = hashtab_insert(h, key, catdatum);
 if (rc)
  goto bad;
 return 0;
bad:
 cat_destroy(key, catdatum, ((void*)0));
 return rc;
}
