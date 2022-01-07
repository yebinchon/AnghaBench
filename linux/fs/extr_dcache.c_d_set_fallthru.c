
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_flags; } ;


 int DCACHE_FALLTHRU ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_set_fallthru(struct dentry *dentry)
{
 spin_lock(&dentry->d_lock);
 dentry->d_flags |= DCACHE_FALLTHRU;
 spin_unlock(&dentry->d_lock);
}
