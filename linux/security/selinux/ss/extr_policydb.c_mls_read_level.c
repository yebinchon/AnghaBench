
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mls_level {int cat; int sens; } ;
typedef int __le32 ;


 int ebitmap_read (int *,void*) ;
 int le32_to_cpu (int ) ;
 int memset (struct mls_level*,int ,int) ;
 int next_entry (int *,void*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int mls_read_level(struct mls_level *lp, void *fp)
{
 __le32 buf[1];
 int rc;

 memset(lp, 0, sizeof(*lp));

 rc = next_entry(buf, fp, sizeof buf);
 if (rc) {
  pr_err("SELinux: mls: truncated level\n");
  return rc;
 }
 lp->sens = le32_to_cpu(buf[0]);

 rc = ebitmap_read(&lp->cat, fp);
 if (rc) {
  pr_err("SELinux: mls:  error reading level categories\n");
  return rc;
 }
 return 0;
}
