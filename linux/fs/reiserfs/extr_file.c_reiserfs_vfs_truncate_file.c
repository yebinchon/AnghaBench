
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int tailpack; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reiserfs_truncate_file (struct inode*,int) ;

void reiserfs_vfs_truncate_file(struct inode *inode)
{
 mutex_lock(&REISERFS_I(inode)->tailpack);
 reiserfs_truncate_file(inode, 1);
 mutex_unlock(&REISERFS_I(inode)->tailpack);
}
