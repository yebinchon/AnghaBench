
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int dep_map; } ;
struct TYPE_12__ {TYPE_1__* ctx; TYPE_6__ base; } ;
struct TYPE_11__ {int stamp; } ;


 int EDEADLK ;
 int WARN_ON (int) ;
 int WWAI (TYPE_1__*) ;
 int WWL (TYPE_4__*,TYPE_1__*) ;
 int WWU (TYPE_4__*) ;
 int _THIS_IP_ ;
 int mutex_lock (TYPE_6__*) ;
 int mutex_release (int *,int,int ) ;
 TYPE_4__ o ;
 TYPE_4__ o2 ;
 int o3 ;
 TYPE_1__ t ;
 TYPE_1__ t2 ;
 int ww_mutex_lock_slow (int *,TYPE_1__*) ;

__attribute__((used)) static void ww_test_edeadlk_acquire_wrong_slow(void)
{
 int ret;

 mutex_lock(&o2.base);
 mutex_release(&o2.base.dep_map, 1, _THIS_IP_);
 o2.ctx = &t2;

 WWAI(&t);
 t2 = t;
 t2.stamp--;

 ret = WWL(&o, &t);
 WARN_ON(ret);

 ret = WWL(&o2, &t);
 WARN_ON(ret != -EDEADLK);
 if (!ret)
  WWU(&o2);

 WWU(&o);

 ww_mutex_lock_slow(&o3, &t);
}
