
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;


 unsigned int MIN_NAPI_ID ;
 int WARN_ON_ONCE (int) ;
 struct napi_struct* napi_by_id (unsigned int) ;
 int rcu_read_lock_held () ;

struct net_device *dev_get_by_napi_id(unsigned int napi_id)
{
 struct napi_struct *napi;

 WARN_ON_ONCE(!rcu_read_lock_held());

 if (napi_id < MIN_NAPI_ID)
  return ((void*)0);

 napi = napi_by_id(napi_id);

 return napi ? napi->dev : ((void*)0);
}
