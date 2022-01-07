
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tailpack; int openers; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 int dquot_file_open (struct inode*,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int reiserfs_file_open(struct inode *inode, struct file *file)
{
 int err = dquot_file_open(inode, file);


        if (!atomic_inc_not_zero(&REISERFS_I(inode)->openers)) {
  mutex_lock(&REISERFS_I(inode)->tailpack);
  atomic_inc(&REISERFS_I(inode)->openers);
  mutex_unlock(&REISERFS_I(inode)->tailpack);
 }
 return err;
}
