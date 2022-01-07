
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int dummy; } ;


 int single_release (struct inode*,struct file*) ;
 int trace_array_put (struct trace_array*) ;

__attribute__((used)) static int tracing_single_release_tr(struct inode *inode, struct file *file)
{
 struct trace_array *tr = inode->i_private;

 trace_array_put(tr);

 return single_release(inode, file);
}
