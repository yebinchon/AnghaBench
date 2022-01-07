
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {scalar_t__ subsystem; int tr; } ;
struct inode {int dummy; } ;
struct file {struct trace_subsystem_dir* private_data; } ;


 int kfree (struct trace_subsystem_dir*) ;
 int put_system (struct trace_subsystem_dir*) ;
 int trace_array_put (int ) ;

__attribute__((used)) static int subsystem_release(struct inode *inode, struct file *file)
{
 struct trace_subsystem_dir *dir = file->private_data;

 trace_array_put(dir->tr);






 if (dir->subsystem)
  put_system(dir);
 else
  kfree(dir);

 return 0;
}
