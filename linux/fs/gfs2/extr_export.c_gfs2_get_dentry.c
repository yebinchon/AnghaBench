
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inum_host {int no_formal_ino; int no_addr; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_CAST (struct inode*) ;
 int GFS2_BLKST_DINODE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct inode* gfs2_lookup_by_inum (struct gfs2_sbd*,int ,int *,int ) ;

__attribute__((used)) static struct dentry *gfs2_get_dentry(struct super_block *sb,
          struct gfs2_inum_host *inum)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct inode *inode;

 inode = gfs2_lookup_by_inum(sdp, inum->no_addr, &inum->no_formal_ino,
        GFS2_BLKST_DINODE);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 return d_obtain_alias(inode);
}
