
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int parallel_dirops; } ;
struct TYPE_3__ {int mutex; } ;


 TYPE_2__* get_fuse_conn (struct inode*) ;
 TYPE_1__* get_fuse_inode (struct inode*) ;
 int mutex_lock (int *) ;

bool fuse_lock_inode(struct inode *inode)
{
 bool locked = 0;

 if (!get_fuse_conn(inode)->parallel_dirops) {
  mutex_lock(&get_fuse_inode(inode)->mutex);
  locked = 1;
 }

 return locked;
}
