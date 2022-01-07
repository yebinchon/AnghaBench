
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ctx; } ;
struct TYPE_9__ {int stamp; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int EALREADY ;
 int EDEADLK ;
 scalar_t__ WARN_ON (int) ;
 int WWAI (TYPE_1__*) ;
 int WWL (TYPE_3__*,TYPE_1__*) ;
 int WWT (TYPE_3__*) ;
 int WWU (TYPE_3__*) ;
 TYPE_3__ o ;
 TYPE_1__ t ;
 TYPE_1__ t2 ;

__attribute__((used)) static void ww_test_fail_acquire(void)
{
 int ret;

 WWAI(&t);
 t.stamp++;

 ret = WWL(&o, &t);

 if (WARN_ON(!o.ctx) ||
     WARN_ON(ret))
  return;


 ret = WWL(&o, &t);
 WARN_ON(ret != -EALREADY);

 ret = WWT(&o);
 WARN_ON(ret);

 t2 = t;
 t2.stamp++;
 ret = WWL(&o, &t2);
 WARN_ON(ret != -EDEADLK);
 WWU(&o);

 if (WWT(&o))
  WWU(&o);




}
