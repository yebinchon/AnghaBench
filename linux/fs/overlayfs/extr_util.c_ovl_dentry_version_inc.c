
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int version; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 scalar_t__ OVL_TYPE_MERGE (int ) ;
 int WARN_ON (int) ;
 struct inode* d_inode (struct dentry*) ;
 int inode_is_locked (struct inode*) ;
 int ovl_path_type (struct dentry*) ;

__attribute__((used)) static void ovl_dentry_version_inc(struct dentry *dentry, bool impurity)
{
 struct inode *inode = d_inode(dentry);

 WARN_ON(!inode_is_locked(inode));






 if (OVL_TYPE_MERGE(ovl_path_type(dentry)) || impurity)
  OVL_I(inode)->version++;
}
