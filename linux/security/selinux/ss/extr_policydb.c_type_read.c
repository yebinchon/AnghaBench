
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct type_datum {int primary; int attribute; void* bounds; void* value; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef int buf ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 int TYPEDATUM_PROPERTY_ATTRIBUTE ;
 int TYPEDATUM_PROPERTY_PRIMARY ;
 int hashtab_insert (struct hashtab*,char*,struct type_datum*) ;
 struct type_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int str_read (char**,int ,void*,int) ;
 int type_destroy (char*,struct type_datum*,int *) ;

__attribute__((used)) static int type_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct type_datum *typdatum;
 int rc, to_read = 3;
 __le32 buf[4];
 u32 len;

 typdatum = kzalloc(sizeof(*typdatum), GFP_KERNEL);
 if (!typdatum)
  return -ENOMEM;

 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
  to_read = 4;

 rc = next_entry(buf, fp, sizeof(buf[0]) * to_read);
 if (rc)
  goto bad;

 len = le32_to_cpu(buf[0]);
 typdatum->value = le32_to_cpu(buf[1]);
 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY) {
  u32 prop = le32_to_cpu(buf[2]);

  if (prop & TYPEDATUM_PROPERTY_PRIMARY)
   typdatum->primary = 1;
  if (prop & TYPEDATUM_PROPERTY_ATTRIBUTE)
   typdatum->attribute = 1;

  typdatum->bounds = le32_to_cpu(buf[3]);
 } else {
  typdatum->primary = le32_to_cpu(buf[2]);
 }

 rc = str_read(&key, GFP_KERNEL, fp, len);
 if (rc)
  goto bad;

 rc = hashtab_insert(h, key, typdatum);
 if (rc)
  goto bad;
 return 0;
bad:
 type_destroy(key, typdatum, ((void*)0));
 return rc;
}
