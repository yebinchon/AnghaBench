
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_ctime; int i_mtime; int i_nlink; int i_sb; } ;
struct TYPE_2__ {int extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int d_name; } ;


 int EIO ;
 int ENOENT ;
 scalar_t__ IS_ERR_OR_NULL (struct fileIdentDesc*) ;
 int PTR_ERR (struct fileIdentDesc*) ;
 int brelse (scalar_t__) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 int mark_inode_dirty (struct inode*) ;
 int set_nlink (struct inode*,int) ;
 int udf_debug (char*,scalar_t__,int ) ;
 int udf_delete_entry (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ;
 struct fileIdentDesc* udf_find_entry (struct inode*,int *,struct udf_fileident_bh*,struct fileIdentDesc*) ;
 scalar_t__ udf_get_lb_pblock (int ,struct kernel_lb_addr*,int ) ;

__attribute__((used)) static int udf_unlink(struct inode *dir, struct dentry *dentry)
{
 int retval;
 struct inode *inode = d_inode(dentry);
 struct udf_fileident_bh fibh;
 struct fileIdentDesc *fi;
 struct fileIdentDesc cfi;
 struct kernel_lb_addr tloc;

 retval = -ENOENT;
 fi = udf_find_entry(dir, &dentry->d_name, &fibh, &cfi);

 if (IS_ERR_OR_NULL(fi)) {
  if (fi)
   retval = PTR_ERR(fi);
  goto out;
 }

 retval = -EIO;
 tloc = lelb_to_cpu(cfi.icb.extLocation);
 if (udf_get_lb_pblock(dir->i_sb, &tloc, 0) != inode->i_ino)
  goto end_unlink;

 if (!inode->i_nlink) {
  udf_debug("Deleting nonexistent file (%lu), %u\n",
     inode->i_ino, inode->i_nlink);
  set_nlink(inode, 1);
 }
 retval = udf_delete_entry(dir, fi, &fibh, &cfi);
 if (retval)
  goto end_unlink;
 dir->i_ctime = dir->i_mtime = current_time(dir);
 mark_inode_dirty(dir);
 inode_dec_link_count(inode);
 inode->i_ctime = dir->i_ctime;
 retval = 0;

end_unlink:
 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);

out:
 return retval;
}
