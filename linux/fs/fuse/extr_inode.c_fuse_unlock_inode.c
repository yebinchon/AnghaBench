
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int mutex; } ;


 TYPE_1__* get_fuse_inode (struct inode*) ;
 int mutex_unlock (int *) ;

void fuse_unlock_inode(struct inode *inode, bool locked)
{
 if (locked)
  mutex_unlock(&get_fuse_inode(inode)->mutex);
}
