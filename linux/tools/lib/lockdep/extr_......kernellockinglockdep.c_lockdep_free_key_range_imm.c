
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending_free {int dummy; } ;
struct TYPE_2__ {struct pending_free* pf; } ;


 int __free_zapped_classes (struct pending_free*) ;
 int __lockdep_free_key_range (struct pending_free*,void*,unsigned long) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 TYPE_1__ delayed_free ;
 int init_data_structures_once () ;
 int lockdep_lock ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static void lockdep_free_key_range_imm(void *start, unsigned long size)
{
 struct pending_free *pf = delayed_free.pf;
 unsigned long flags;

 init_data_structures_once();

 raw_local_irq_save(flags);
 arch_spin_lock(&lockdep_lock);
 __lockdep_free_key_range(pf, start, size);
 __free_zapped_classes(pf);
 arch_spin_unlock(&lockdep_lock);
 raw_local_irq_restore(flags);
}
