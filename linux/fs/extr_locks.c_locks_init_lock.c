
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int locks_init_lock_heads (struct file_lock*) ;
 int memset (struct file_lock*,int ,int) ;

void locks_init_lock(struct file_lock *fl)
{
 memset(fl, 0, sizeof(struct file_lock));
 locks_init_lock_heads(fl);
}
