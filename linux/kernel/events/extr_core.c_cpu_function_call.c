
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_function_call {void* info; int ret; int func; int * p; } ;
typedef int remote_function_f ;


 int ENXIO ;
 int remote_function ;
 int smp_call_function_single (int,int ,struct remote_function_call*,int) ;

__attribute__((used)) static int cpu_function_call(int cpu, remote_function_f func, void *info)
{
 struct remote_function_call data = {
  .p = ((void*)0),
  .func = func,
  .info = info,
  .ret = -ENXIO,
 };

 smp_call_function_single(cpu, remote_function, &data, 1);

 return data.ret;
}
