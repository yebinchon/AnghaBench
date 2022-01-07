
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ctx; int base; } ;


 int WARN_ON (int) ;
 int WWAI (int *) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_lock_killable (int *) ;
 int mutex_lock_nest_lock (int *,int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ o ;
 int t ;

__attribute__((used)) static void ww_test_normal(void)
{
 int ret;

 WWAI(&t);
 o.ctx = (void *)~0UL;
 mutex_lock(&o.base);
 mutex_unlock(&o.base);
 WARN_ON(o.ctx != (void *)~0UL);


 o.ctx = (void *)~0UL;
 ret = mutex_lock_interruptible(&o.base);
 if (!ret)
  mutex_unlock(&o.base);
 else
  WARN_ON(1);
 WARN_ON(o.ctx != (void *)~0UL);


 o.ctx = (void *)~0UL;
 ret = mutex_lock_killable(&o.base);
 if (!ret)
  mutex_unlock(&o.base);
 else
  WARN_ON(1);
 WARN_ON(o.ctx != (void *)~0UL);


 o.ctx = (void *)~0UL;
 ret = mutex_trylock(&o.base);
 WARN_ON(!ret);
 if (ret)
  mutex_unlock(&o.base);
 else
  WARN_ON(1);
 WARN_ON(o.ctx != (void *)~0UL);


 o.ctx = (void *)~0UL;
 mutex_lock(&o.base);
 ret = mutex_trylock(&o.base);
 WARN_ON(ret);
 mutex_unlock(&o.base);
 WARN_ON(o.ctx != (void *)~0UL);


 o.ctx = (void *)~0UL;
 mutex_lock_nest_lock(&o.base, &t);
 mutex_unlock(&o.base);
 WARN_ON(o.ctx != (void *)~0UL);
}
