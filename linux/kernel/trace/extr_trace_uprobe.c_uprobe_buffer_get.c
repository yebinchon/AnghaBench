
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_cpu_buffer {int mutex; } ;


 int mutex_lock (int *) ;
 struct uprobe_cpu_buffer* per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;
 int uprobe_cpu_buffer ;

__attribute__((used)) static struct uprobe_cpu_buffer *uprobe_buffer_get(void)
{
 struct uprobe_cpu_buffer *ucb;
 int cpu;

 cpu = raw_smp_processor_id();
 ucb = per_cpu_ptr(uprobe_cpu_buffer, cpu);





 mutex_lock(&ucb->mutex);

 return ucb;
}
