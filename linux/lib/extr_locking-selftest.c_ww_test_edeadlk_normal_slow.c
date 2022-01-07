
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int dep_map; } ;
struct TYPE_14__ {int stamp; } ;
struct TYPE_13__ {TYPE_7__ base; TYPE_2__* ctx; } ;


 int EDEADLK ;
 int WARN_ON (int) ;
 int WWAI (TYPE_2__*) ;
 int WWL (TYPE_1__*,TYPE_2__*) ;
 int WWU (TYPE_1__*) ;
 int _THIS_IP_ ;
 int mutex_acquire (int *,int ,int,int ) ;
 int mutex_lock (TYPE_7__*) ;
 int mutex_release (int *,int,int ) ;
 int mutex_unlock (TYPE_7__*) ;
 TYPE_1__ o ;
 TYPE_1__ o2 ;
 TYPE_2__ t ;
 TYPE_2__ t2 ;
 int ww_mutex_lock_slow (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void ww_test_edeadlk_normal_slow(void)
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

 o2.ctx = ((void*)0);
 mutex_acquire(&o2.base.dep_map, 0, 1, _THIS_IP_);
 mutex_unlock(&o2.base);
 WWU(&o);

 ww_mutex_lock_slow(&o2, &t);
}
