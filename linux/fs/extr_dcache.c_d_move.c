
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __d_move (struct dentry*,struct dentry*,int) ;
 int rename_lock ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void d_move(struct dentry *dentry, struct dentry *target)
{
 write_seqlock(&rename_lock);
 __d_move(dentry, target, 0);
 write_sequnlock(&rename_lock);
}
