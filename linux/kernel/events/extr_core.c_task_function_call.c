
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct remote_function_call {void* info; int ret; int func; struct task_struct* p; } ;
typedef int remote_function_f ;


 int EAGAIN ;
 int remote_function ;
 int smp_call_function_single (int ,int ,struct remote_function_call*,int) ;
 int task_cpu (struct task_struct*) ;

__attribute__((used)) static int
task_function_call(struct task_struct *p, remote_function_f func, void *info)
{
 struct remote_function_call data = {
  .p = p,
  .func = func,
  .info = info,
  .ret = -EAGAIN,
 };
 int ret;

 do {
  ret = smp_call_function_single(task_cpu(p), remote_function, &data, 1);
  if (!ret)
   ret = data.ret;
 } while (ret == -EAGAIN);

 return ret;
}
