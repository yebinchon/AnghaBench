
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mls_range {TYPE_1__* level; } ;
typedef int __le32 ;
struct TYPE_3__ {size_t sens; int cat; } ;


 size_t ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int cpu_to_le32 (size_t) ;
 int ebitmap_write (int *,void*) ;
 int mls_level_eq (TYPE_1__*,TYPE_1__*) ;
 int put_entry (int *,int,size_t,void*) ;

__attribute__((used)) static int mls_write_range_helper(struct mls_range *r, void *fp)
{
 __le32 buf[3];
 size_t items;
 int rc, eq;

 eq = mls_level_eq(&r->level[1], &r->level[0]);

 if (eq)
  items = 2;
 else
  items = 3;
 buf[0] = cpu_to_le32(items-1);
 buf[1] = cpu_to_le32(r->level[0].sens);
 if (!eq)
  buf[2] = cpu_to_le32(r->level[1].sens);

 BUG_ON(items > ARRAY_SIZE(buf));

 rc = put_entry(buf, sizeof(u32), items, fp);
 if (rc)
  return rc;

 rc = ebitmap_write(&r->level[0].cat, fp);
 if (rc)
  return rc;
 if (!eq) {
  rc = ebitmap_write(&r->level[1].cat, fp);
  if (rc)
   return rc;
 }

 return 0;
}
