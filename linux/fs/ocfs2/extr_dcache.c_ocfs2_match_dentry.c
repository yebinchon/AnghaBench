
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct dentry {int d_parent; int d_fsdata; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ d_unhashed (struct dentry*) ;

__attribute__((used)) static int ocfs2_match_dentry(struct dentry *dentry,
         u64 parent_blkno,
         int skip_unhashed)
{
 struct inode *parent;







 if (!dentry->d_fsdata)
  return 0;

 if (!dentry->d_parent)
  return 0;

 if (skip_unhashed && d_unhashed(dentry))
  return 0;

 parent = d_inode(dentry->d_parent);

 if (!parent)
  return 0;


 if (OCFS2_I(parent)->ip_blkno != parent_blkno)
  return 0;

 return 1;
}
