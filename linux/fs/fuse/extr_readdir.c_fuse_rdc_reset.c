
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cached; scalar_t__ pos; scalar_t__ size; int version; } ;
struct fuse_inode {TYPE_1__ rdc; } ;


 struct fuse_inode* get_fuse_inode (struct inode*) ;

__attribute__((used)) static void fuse_rdc_reset(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 fi->rdc.cached = 0;
 fi->rdc.version++;
 fi->rdc.size = 0;
 fi->rdc.pos = 0;
}
