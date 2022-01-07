
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int * i_fop; int * i_op; } ;
struct TYPE_2__ {int cached; scalar_t__ version; scalar_t__ pos; scalar_t__ size; int lock; } ;
struct fuse_inode {TYPE_1__ rdc; } ;


 int fuse_dir_inode_operations ;
 int fuse_dir_operations ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int spin_lock_init (int *) ;

void fuse_init_dir(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 inode->i_op = &fuse_dir_inode_operations;
 inode->i_fop = &fuse_dir_operations;

 spin_lock_init(&fi->rdc.lock);
 fi->rdc.cached = 0;
 fi->rdc.size = 0;
 fi->rdc.pos = 0;
 fi->rdc.version = 0;
}
