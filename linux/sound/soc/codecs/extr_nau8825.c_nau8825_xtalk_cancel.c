
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {scalar_t__ xtalk_state; int xtalk_protect; int xtalk_work; scalar_t__ xtalk_enable; } ;


 scalar_t__ NAU8825_XTALK_DONE ;
 int cancel_work_sync (int *) ;
 int nau8825_sema_reset (struct nau8825*) ;
 int nau8825_xtalk_clean (struct nau8825*,int) ;

__attribute__((used)) static void nau8825_xtalk_cancel(struct nau8825 *nau8825)
{




 if (nau8825->xtalk_enable && nau8825->xtalk_state !=
  NAU8825_XTALK_DONE) {
  cancel_work_sync(&nau8825->xtalk_work);
  nau8825_xtalk_clean(nau8825, 1);
 }

 nau8825_sema_reset(nau8825);
 nau8825->xtalk_state = NAU8825_XTALK_DONE;
 nau8825->xtalk_protect = 0;
}
