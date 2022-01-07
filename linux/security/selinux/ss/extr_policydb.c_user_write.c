
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct user_datum {size_t value; size_t bounds; int dfltlevel; int range; int roles; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {void* fp; struct policydb* p; } ;
typedef char __le32 ;


 size_t ARRAY_SIZE (char*) ;
 int BUG_ON (int) ;
 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 char cpu_to_le32 (size_t) ;
 int ebitmap_write (int *,void*) ;
 int mls_write_level (int *,void*) ;
 int mls_write_range_helper (int *,void*) ;
 int put_entry (char*,int,size_t,void*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int user_write(void *vkey, void *datum, void *ptr)
{
 char *key = vkey;
 struct user_datum *usrdatum = datum;
 struct policy_data *pd = ptr;
 struct policydb *p = pd->p;
 void *fp = pd->fp;
 __le32 buf[3];
 size_t items, len;
 int rc;

 len = strlen(key);
 items = 0;
 buf[items++] = cpu_to_le32(len);
 buf[items++] = cpu_to_le32(usrdatum->value);
 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
  buf[items++] = cpu_to_le32(usrdatum->bounds);
 BUG_ON(items > ARRAY_SIZE(buf));
 rc = put_entry(buf, sizeof(u32), items, fp);
 if (rc)
  return rc;

 rc = put_entry(key, 1, len, fp);
 if (rc)
  return rc;

 rc = ebitmap_write(&usrdatum->roles, fp);
 if (rc)
  return rc;

 rc = mls_write_range_helper(&usrdatum->range, fp);
 if (rc)
  return rc;

 rc = mls_write_level(&usrdatum->dfltlevel, fp);
 if (rc)
  return rc;

 return 0;
}
