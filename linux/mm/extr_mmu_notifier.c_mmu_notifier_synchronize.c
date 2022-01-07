
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srcu ;
 int synchronize_srcu (int *) ;

void mmu_notifier_synchronize(void)
{
 synchronize_srcu(&srcu);
}
