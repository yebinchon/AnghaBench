
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct policydb {int dummy; } ;
struct TYPE_9__ {int data; TYPE_3__* xperms; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_6__ {int source_type; int target_type; int target_class; int specified; } ;
struct avtab_node {TYPE_5__ datum; TYPE_1__ key; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_7__ {int * p; } ;
struct TYPE_8__ {TYPE_2__ perms; int driver; int specified; } ;


 int ARRAY_SIZE (int *) ;
 int AVTAB_XPERMS ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int put_entry (int *,int,int,void*) ;

int avtab_write_item(struct policydb *p, struct avtab_node *cur, void *fp)
{
 __le16 buf16[4];
 __le32 buf32[ARRAY_SIZE(cur->datum.u.xperms->perms.p)];
 int rc;
 unsigned int i;

 buf16[0] = cpu_to_le16(cur->key.source_type);
 buf16[1] = cpu_to_le16(cur->key.target_type);
 buf16[2] = cpu_to_le16(cur->key.target_class);
 buf16[3] = cpu_to_le16(cur->key.specified);
 rc = put_entry(buf16, sizeof(u16), 4, fp);
 if (rc)
  return rc;

 if (cur->key.specified & AVTAB_XPERMS) {
  rc = put_entry(&cur->datum.u.xperms->specified, sizeof(u8), 1, fp);
  if (rc)
   return rc;
  rc = put_entry(&cur->datum.u.xperms->driver, sizeof(u8), 1, fp);
  if (rc)
   return rc;
  for (i = 0; i < ARRAY_SIZE(cur->datum.u.xperms->perms.p); i++)
   buf32[i] = cpu_to_le32(cur->datum.u.xperms->perms.p[i]);
  rc = put_entry(buf32, sizeof(u32),
    ARRAY_SIZE(cur->datum.u.xperms->perms.p), fp);
 } else {
  buf32[0] = cpu_to_le32(cur->datum.u.data);
  rc = put_entry(buf32, sizeof(u32), 1, fp);
 }
 if (rc)
  return rc;
 return 0;
}
