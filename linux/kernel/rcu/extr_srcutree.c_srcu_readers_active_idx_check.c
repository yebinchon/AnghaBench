
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int smp_mb () ;
 unsigned long srcu_readers_lock_idx (struct srcu_struct*,int) ;
 unsigned long srcu_readers_unlock_idx (struct srcu_struct*,int) ;

__attribute__((used)) static bool srcu_readers_active_idx_check(struct srcu_struct *ssp, int idx)
{
 unsigned long unlocks;

 unlocks = srcu_readers_unlock_idx(ssp, idx);
 smp_mb();
 return srcu_readers_lock_idx(ssp, idx) == unlocks;
}
