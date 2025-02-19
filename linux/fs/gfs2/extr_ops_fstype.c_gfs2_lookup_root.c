
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct dentry {int dummy; } ;


 int DT_DIR ;
 int ENOMEM ;
 int GFS2_BLKST_FREE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct dentry* d_make_root (struct inode*) ;
 int fs_err (struct gfs2_sbd*,char*,char const*,...) ;
 struct inode* gfs2_inode_lookup (struct super_block*,int ,int ,int ,int ) ;

__attribute__((used)) static int gfs2_lookup_root(struct super_block *sb, struct dentry **dptr,
       u64 no_addr, const char *name)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct dentry *dentry;
 struct inode *inode;

 inode = gfs2_inode_lookup(sb, DT_DIR, no_addr, 0,
      GFS2_BLKST_FREE );
 if (IS_ERR(inode)) {
  fs_err(sdp, "can't read in %s inode: %ld\n", name, PTR_ERR(inode));
  return PTR_ERR(inode);
 }
 dentry = d_make_root(inode);
 if (!dentry) {
  fs_err(sdp, "can't alloc %s dentry\n", name);
  return -ENOMEM;
 }
 *dptr = dentry;
 return 0;
}
