
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ce_unbind {int res; int ce; } ;


 int EAGAIN ;
 int __clockevents_try_unbind (int ,int ) ;
 int clockevents_lock ;
 int clockevents_replace (int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_processor_id () ;

__attribute__((used)) static void __clockevents_unbind(void *arg)
{
 struct ce_unbind *cu = arg;
 int res;

 raw_spin_lock(&clockevents_lock);
 res = __clockevents_try_unbind(cu->ce, smp_processor_id());
 if (res == -EAGAIN)
  res = clockevents_replace(cu->ce);
 cu->res = res;
 raw_spin_unlock(&clockevents_lock);
}
