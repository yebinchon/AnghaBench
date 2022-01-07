
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;


 int __d_drop (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_drop(struct dentry *dentry)
{
 spin_lock(&dentry->d_lock);
 __d_drop(dentry);
 spin_unlock(&dentry->d_lock);
}
