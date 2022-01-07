
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kthread {int data; } ;
typedef int data ;


 int probe_kernel_read (void**,int *,int) ;
 struct kthread* to_kthread (struct task_struct*) ;

void *kthread_probe_data(struct task_struct *task)
{
 struct kthread *kthread = to_kthread(task);
 void *data = ((void*)0);

 probe_kernel_read(&data, &kthread->data, sizeof(data));
 return data;
}
