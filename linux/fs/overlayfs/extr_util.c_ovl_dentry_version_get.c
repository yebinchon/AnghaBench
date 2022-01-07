
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int version; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 int WARN_ON (int) ;
 struct inode* d_inode (struct dentry*) ;
 int inode_is_locked (struct inode*) ;

u64 ovl_dentry_version_get(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 WARN_ON(!inode_is_locked(inode));
 return OVL_I(inode)->version;
}
