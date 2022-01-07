
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {scalar_t__ srcu_idx; } ;


 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int smp_mb () ;

__attribute__((used)) static void srcu_flip(struct srcu_struct *ssp)
{
 smp_mb();

 WRITE_ONCE(ssp->srcu_idx, ssp->srcu_idx + 1);
 smp_mb();
}
