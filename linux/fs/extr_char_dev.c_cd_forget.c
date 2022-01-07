
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int * i_mapping; int * i_cdev; int i_devices; } ;


 int cdev_lock ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cd_forget(struct inode *inode)
{
 spin_lock(&cdev_lock);
 list_del_init(&inode->i_devices);
 inode->i_cdev = ((void*)0);
 inode->i_mapping = &inode->i_data;
 spin_unlock(&cdev_lock);
}
