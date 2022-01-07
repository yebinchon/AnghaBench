
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;


 int IS_ROOT (struct dentry*) ;
 int WARN_ON (int) ;
 int __d_move (struct dentry*,struct dentry*,int) ;
 int rename_lock ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void d_exchange(struct dentry *dentry1, struct dentry *dentry2)
{
 write_seqlock(&rename_lock);

 WARN_ON(!dentry1->d_inode);
 WARN_ON(!dentry2->d_inode);
 WARN_ON(IS_ROOT(dentry1));
 WARN_ON(IS_ROOT(dentry2));

 __d_move(dentry1, dentry2, 1);

 write_sequnlock(&rename_lock);
}
