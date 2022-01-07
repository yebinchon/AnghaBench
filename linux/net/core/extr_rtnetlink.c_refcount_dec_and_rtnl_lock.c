
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int refcount_dec_and_mutex_lock (int *,int *) ;
 int rtnl_mutex ;

bool refcount_dec_and_rtnl_lock(refcount_t *r)
{
 return refcount_dec_and_mutex_lock(r, &rtnl_mutex);
}
