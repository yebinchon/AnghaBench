
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pid* private_data; } ;


 int put_pid (struct pid*) ;

__attribute__((used)) static int pidfd_release(struct inode *inode, struct file *file)
{
 struct pid *pid = file->private_data;

 file->private_data = ((void*)0);
 put_pid(pid);
 return 0;
}
