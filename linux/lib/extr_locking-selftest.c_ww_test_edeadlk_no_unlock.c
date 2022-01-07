
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int dep_map; } ;
struct TYPE_11__ {TYPE_5__ base; TYPE_1__* ctx; } ;
struct TYPE_10__ {int stamp; } ;


 int EDEADLK ;
 int WARN_ON (int) ;
 int WWAI (TYPE_1__*) ;
 int WWL (TYPE_3__*,TYPE_1__*) ;
 int _THIS_IP_ ;
 int mutex_acquire (int *,int ,int,int ) ;
 int mutex_lock (TYPE_5__*) ;
 int mutex_release (int *,int,int ) ;
 int mutex_unlock (TYPE_5__*) ;
 TYPE_3__ o ;
 TYPE_3__ o2 ;
 TYPE_1__ t ;
 TYPE_1__ t2 ;

__attribute__((used)) static void ww_test_edeadlk_no_unlock(void)
{
 int ret;

 mutex_lock(&o2.base);
 o2.ctx = &t2;
 mutex_release(&o2.base.dep_map, 1, _THIS_IP_);

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

 WWL(&o2, &t);
}
