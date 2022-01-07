
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct avtab {int dummy; } ;
typedef int __le32 ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int avtab_alloc (struct avtab*,scalar_t__) ;
 int avtab_destroy (struct avtab*) ;
 int avtab_insertf ;
 int avtab_read_item (struct avtab*,void*,struct policydb*,int ,int *) ;
 scalar_t__ le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int pr_err (char*) ;

int avtab_read(struct avtab *a, void *fp, struct policydb *pol)
{
 int rc;
 __le32 buf[1];
 u32 nel, i;


 rc = next_entry(buf, fp, sizeof(u32));
 if (rc < 0) {
  pr_err("SELinux: avtab: truncated table\n");
  goto bad;
 }
 nel = le32_to_cpu(buf[0]);
 if (!nel) {
  pr_err("SELinux: avtab: table is empty\n");
  rc = -EINVAL;
  goto bad;
 }

 rc = avtab_alloc(a, nel);
 if (rc)
  goto bad;

 for (i = 0; i < nel; i++) {
  rc = avtab_read_item(a, fp, pol, avtab_insertf, ((void*)0));
  if (rc) {
   if (rc == -ENOMEM)
    pr_err("SELinux: avtab: out of memory\n");
   else if (rc == -EEXIST)
    pr_err("SELinux: avtab: duplicate entry\n");

   goto bad;
  }
 }

 rc = 0;
out:
 return rc;

bad:
 avtab_destroy(a);
 goto out;
}
