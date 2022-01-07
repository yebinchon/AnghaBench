
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct file {struct perf_event const* private_data; int * f_op; } ;


 int EINVAL ;
 struct perf_event const* ERR_PTR (int ) ;
 int perf_fops ;

const struct perf_event *perf_get_event(struct file *file)
{
 if (file->f_op != &perf_fops)
  return ERR_PTR(-EINVAL);

 return file->private_data;
}
