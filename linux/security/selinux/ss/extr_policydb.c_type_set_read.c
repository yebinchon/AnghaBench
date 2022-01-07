
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct type_set {int flags; int negset; int types; } ;
typedef int __le32 ;


 int EINVAL ;
 scalar_t__ ebitmap_read (int *,void*) ;
 int le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;

__attribute__((used)) static int type_set_read(struct type_set *t, void *fp)
{
 __le32 buf[1];
 int rc;

 if (ebitmap_read(&t->types, fp))
  return -EINVAL;
 if (ebitmap_read(&t->negset, fp))
  return -EINVAL;

 rc = next_entry(buf, fp, sizeof(u32));
 if (rc < 0)
  return -EINVAL;
 t->flags = le32_to_cpu(buf[0]);

 return 0;
}
