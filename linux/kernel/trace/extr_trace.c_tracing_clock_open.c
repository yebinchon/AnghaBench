
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,struct trace_array*) ;
 int trace_array_put (struct trace_array*) ;
 int tracing_check_open_get_tr (struct trace_array*) ;
 int tracing_clock_show ;

__attribute__((used)) static int tracing_clock_open(struct inode *inode, struct file *file)
{
 struct trace_array *tr = inode->i_private;
 int ret;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;

 ret = single_open(file, tracing_clock_show, inode->i_private);
 if (ret < 0)
  trace_array_put(tr);

 return ret;
}
