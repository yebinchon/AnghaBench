
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int locks_inode (struct file*) ;
 int posix_lock_inode (int ,struct file_lock*,struct file_lock*) ;

int posix_lock_file(struct file *filp, struct file_lock *fl,
   struct file_lock *conflock)
{
 return posix_lock_inode(locks_inode(filp), fl, conflock);
}
