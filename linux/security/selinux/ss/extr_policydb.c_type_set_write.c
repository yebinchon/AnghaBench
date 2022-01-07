
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct type_set {int flags; int negset; int types; } ;
typedef int __le32 ;


 int EINVAL ;
 int cpu_to_le32 (int ) ;
 scalar_t__ ebitmap_write (int *,void*) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int type_set_write(struct type_set *t, void *fp)
{
 int rc;
 __le32 buf[1];

 if (ebitmap_write(&t->types, fp))
  return -EINVAL;
 if (ebitmap_write(&t->negset, fp))
  return -EINVAL;

 buf[0] = cpu_to_le32(t->flags);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return -EINVAL;

 return 0;
}
