
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mls_range {TYPE_1__* level; } ;
typedef int __le32 ;
struct TYPE_2__ {int cat; void* sens; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ebitmap_cpy (int *,int *) ;
 int ebitmap_destroy (int *) ;
 int ebitmap_read (int *,void*) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int mls_read_range_helper(struct mls_range *r, void *fp)
{
 __le32 buf[2];
 u32 items;
 int rc;

 rc = next_entry(buf, fp, sizeof(u32));
 if (rc)
  goto out;

 rc = -EINVAL;
 items = le32_to_cpu(buf[0]);
 if (items > ARRAY_SIZE(buf)) {
  pr_err("SELinux: mls:  range overflow\n");
  goto out;
 }

 rc = next_entry(buf, fp, sizeof(u32) * items);
 if (rc) {
  pr_err("SELinux: mls:  truncated range\n");
  goto out;
 }

 r->level[0].sens = le32_to_cpu(buf[0]);
 if (items > 1)
  r->level[1].sens = le32_to_cpu(buf[1]);
 else
  r->level[1].sens = r->level[0].sens;

 rc = ebitmap_read(&r->level[0].cat, fp);
 if (rc) {
  pr_err("SELinux: mls:  error reading low categories\n");
  goto out;
 }
 if (items > 1) {
  rc = ebitmap_read(&r->level[1].cat, fp);
  if (rc) {
   pr_err("SELinux: mls:  error reading high categories\n");
   goto bad_high;
  }
 } else {
  rc = ebitmap_cpy(&r->level[1].cat, &r->level[0].cat);
  if (rc) {
   pr_err("SELinux: mls:  out of memory\n");
   goto bad_high;
  }
 }

 return 0;
bad_high:
 ebitmap_destroy(&r->level[0].cat);
out:
 return rc;
}
