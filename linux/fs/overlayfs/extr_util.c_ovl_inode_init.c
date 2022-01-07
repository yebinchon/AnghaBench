
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {void* lowerdata; void* lower; struct dentry* __upperdentry; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 void* igrab (struct inode*) ;
 int ovl_copyattr (struct inode*,struct inode*) ;
 int ovl_copyflags (struct inode*,struct inode*) ;

void ovl_inode_init(struct inode *inode, struct dentry *upperdentry,
      struct dentry *lowerdentry, struct dentry *lowerdata)
{
 struct inode *realinode = d_inode(upperdentry ?: lowerdentry);

 if (upperdentry)
  OVL_I(inode)->__upperdentry = upperdentry;
 if (lowerdentry)
  OVL_I(inode)->lower = igrab(d_inode(lowerdentry));
 if (lowerdata)
  OVL_I(inode)->lowerdata = igrab(d_inode(lowerdata));

 ovl_copyattr(realinode, inode);
 ovl_copyflags(realinode, inode);
 if (!inode->i_ino)
  inode->i_ino = realinode->i_ino;
}
