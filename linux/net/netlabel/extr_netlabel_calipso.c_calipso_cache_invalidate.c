
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_calipso_ops {int (* cache_invalidate ) () ;} ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 () ;

void calipso_cache_invalidate(void)
{
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ops->cache_invalidate();
}
