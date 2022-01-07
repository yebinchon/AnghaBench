
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos_lock; } ;


 int mutex_unlock (int *) ;

void __f_unlock_pos(struct file *f)
{
 mutex_unlock(&f->f_pos_lock);
}
