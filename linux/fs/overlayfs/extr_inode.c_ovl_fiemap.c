
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {TYPE_1__* i_op; int i_mapping; int i_sb; } ;
struct fiemap_extent_info {int fi_flags; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int (* fiemap ) (struct inode*,struct fiemap_extent_info*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int FIEMAP_FLAG_SYNC ;
 int filemap_write_and_wait (int ) ;
 struct inode* ovl_inode_real (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;
 int stub1 (struct inode*,struct fiemap_extent_info*,int ,int ) ;

__attribute__((used)) static int ovl_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
        u64 start, u64 len)
{
 int err;
 struct inode *realinode = ovl_inode_real(inode);
 const struct cred *old_cred;

 if (!realinode->i_op->fiemap)
  return -EOPNOTSUPP;

 old_cred = ovl_override_creds(inode->i_sb);

 if (fieinfo->fi_flags & FIEMAP_FLAG_SYNC)
  filemap_write_and_wait(realinode->i_mapping);

 err = realinode->i_op->fiemap(realinode, fieinfo, start, len);
 revert_creds(old_cred);

 return err;
}
