
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct file {int * f_op; } ;


 int EBADF ;
 struct pid* ERR_PTR (int ) ;
 int file_inode (struct file const*) ;
 struct pid* proc_pid (int ) ;
 int proc_tgid_base_operations ;

struct pid *tgid_pidfd_to_pid(const struct file *file)
{
 if (file->f_op != &proc_tgid_base_operations)
  return ERR_PTR(-EBADF);

 return proc_pid(file_inode(file));
}
