
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {struct task_struct* kswapd; } ;


 TYPE_1__* NODE_DATA (int) ;
 int kthread_stop (struct task_struct*) ;

void kswapd_stop(int nid)
{
 struct task_struct *kswapd = NODE_DATA(nid)->kswapd;

 if (kswapd) {
  kthread_stop(kswapd);
  NODE_DATA(nid)->kswapd = ((void*)0);
 }
}
