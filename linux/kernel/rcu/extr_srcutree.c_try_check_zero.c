
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int SRCU_RETRY_CHECK_DELAY ;
 int srcu_get_delay (struct srcu_struct*) ;
 scalar_t__ srcu_readers_active_idx_check (struct srcu_struct*,int) ;
 int udelay (int ) ;

__attribute__((used)) static bool try_check_zero(struct srcu_struct *ssp, int idx, int trycount)
{
 for (;;) {
  if (srcu_readers_active_idx_check(ssp, idx))
   return 1;
  if (--trycount + !srcu_get_delay(ssp) <= 0)
   return 0;
  udelay(SRCU_RETRY_CHECK_DELAY);
 }
}
