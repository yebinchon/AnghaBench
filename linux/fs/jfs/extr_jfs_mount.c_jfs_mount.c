
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jfs_sb_info {int mntflag; struct inode* ipimap; struct inode* ipaimap2; struct inode* ipbmap; struct inode* ipaimap; } ;
struct inode {int dummy; } ;


 int AGGREGATE_I ;
 int BMAP_I ;
 int EIO ;
 int FILESYSTEM_I ;
 int JFS_BAD_SAIT ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int chkSuper (struct super_block*) ;
 int dbMount (struct inode*) ;
 int dbUnmount (struct inode*,int) ;
 int diFreeSpecial (struct inode*) ;
 int diMount (struct inode*) ;
 struct inode* diReadSpecial (struct super_block*,int ,int) ;
 int diUnmount (struct inode*,int) ;
 int jfs_err (char*,...) ;
 int jfs_info (char*,struct inode*) ;

int jfs_mount(struct super_block *sb)
{
 int rc = 0;
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct inode *ipaimap = ((void*)0);
 struct inode *ipaimap2 = ((void*)0);
 struct inode *ipimap = ((void*)0);
 struct inode *ipbmap = ((void*)0);





 if ((rc = chkSuper(sb))) {
  goto errout20;
 }

 ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
 if (ipaimap == ((void*)0)) {
  jfs_err("jfs_mount: Failed to read AGGREGATE_I");
  rc = -EIO;
  goto errout20;
 }
 sbi->ipaimap = ipaimap;

 jfs_info("jfs_mount: ipaimap:0x%p", ipaimap);




 if ((rc = diMount(ipaimap))) {
  jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
  goto errout21;
 }




 ipbmap = diReadSpecial(sb, BMAP_I, 0);
 if (ipbmap == ((void*)0)) {
  rc = -EIO;
  goto errout22;
 }

 jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);

 sbi->ipbmap = ipbmap;




 if ((rc = dbMount(ipbmap))) {
  jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
  goto errout22;
 }
 if ((sbi->mntflag & JFS_BAD_SAIT) == 0) {
  ipaimap2 = diReadSpecial(sb, AGGREGATE_I, 1);
  if (!ipaimap2) {
   jfs_err("jfs_mount: Failed to read AGGREGATE_I");
   rc = -EIO;
   goto errout35;
  }
  sbi->ipaimap2 = ipaimap2;

  jfs_info("jfs_mount: ipaimap2:0x%p", ipaimap2);




  if ((rc = diMount(ipaimap2))) {
   jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
    rc);
   goto errout35;
  }
 } else

  sbi->ipaimap2 = ((void*)0);







 ipimap = diReadSpecial(sb, FILESYSTEM_I, 0);
 if (ipimap == ((void*)0)) {
  jfs_err("jfs_mount: Failed to read FILESYSTEM_I");

  rc = -EIO;
  goto errout40;
 }
 jfs_info("jfs_mount: ipimap:0x%p", ipimap);


 sbi->ipimap = ipimap;


 if ((rc = diMount(ipimap))) {
  jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
  goto errout41;
 }

 goto out;




      errout41:
 diFreeSpecial(ipimap);

      errout40:


 if (ipaimap2) {
  diUnmount(ipaimap2, 1);
  diFreeSpecial(ipaimap2);
 }

      errout35:


 dbUnmount(ipbmap, 1);
 diFreeSpecial(ipbmap);

      errout22:

 diUnmount(ipaimap, 1);

      errout21:
 diFreeSpecial(ipaimap);
      errout20:

      out:

 if (rc)
  jfs_err("Mount JFS Failure: %d", rc);

 return rc;
}
