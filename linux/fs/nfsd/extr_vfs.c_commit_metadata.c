
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_fh {int fh_export; int fh_dentry; } ;
struct inode {TYPE_1__* i_sb; } ;
struct export_operations {int (* commit_metadata ) (struct inode*) ;} ;
struct TYPE_2__ {struct export_operations* s_export_op; } ;


 int EX_ISSYNC (int ) ;
 struct inode* d_inode (int ) ;
 int stub1 (struct inode*) ;
 int sync_inode_metadata (struct inode*,int) ;

__attribute__((used)) static int
commit_metadata(struct svc_fh *fhp)
{
 struct inode *inode = d_inode(fhp->fh_dentry);
 const struct export_operations *export_ops = inode->i_sb->s_export_op;

 if (!EX_ISSYNC(fhp->fh_export))
  return 0;

 if (export_ops->commit_metadata)
  return export_ops->commit_metadata(inode);
 return sync_inode_metadata(inode, 1);
}
