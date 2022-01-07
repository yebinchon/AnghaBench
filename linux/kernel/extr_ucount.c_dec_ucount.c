
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucounts {int * ucount; TYPE_1__* ns; } ;
typedef enum ucount_type { ____Placeholder_ucount_type } ucount_type ;
struct TYPE_2__ {struct ucounts* ucounts; } ;


 int WARN_ON_ONCE (int) ;
 int atomic_dec_if_positive (int *) ;
 int put_ucounts (struct ucounts*) ;

void dec_ucount(struct ucounts *ucounts, enum ucount_type type)
{
 struct ucounts *iter;
 for (iter = ucounts; iter; iter = iter->ns->ucounts) {
  int dec = atomic_dec_if_positive(&iter->ucount[type]);
  WARN_ON_ONCE(dec < 0);
 }
 put_ucounts(ucounts);
}
