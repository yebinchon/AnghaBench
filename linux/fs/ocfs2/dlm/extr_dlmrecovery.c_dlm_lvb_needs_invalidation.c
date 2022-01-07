
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct dlm_lock {TYPE_1__ ml; } ;


 scalar_t__ LKM_EXMODE ;
 scalar_t__ LKM_PRMODE ;

__attribute__((used)) static inline int dlm_lvb_needs_invalidation(struct dlm_lock *lock, int local)
{
 if (local) {
  if (lock->ml.type != LKM_EXMODE &&
      lock->ml.type != LKM_PRMODE)
   return 1;
 } else if (lock->ml.type == LKM_EXMODE)
  return 1;
 return 0;
}
