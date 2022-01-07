
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_array* private_data; } ;


 int tracing_check_open_get_tr (struct trace_array*) ;

int tracing_open_generic_tr(struct inode *inode, struct file *filp)
{
 struct trace_array *tr = inode->i_private;
 int ret;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;

 filp->private_data = inode->i_private;

 return 0;
}
