
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_should_stop () ;
 int simple_thread_func_fn (int ) ;

__attribute__((used)) static int simple_thread_fn(void *arg)
{
 int cnt = 0;

 while (!kthread_should_stop())
  simple_thread_func_fn(cnt++);

 return 0;
}
