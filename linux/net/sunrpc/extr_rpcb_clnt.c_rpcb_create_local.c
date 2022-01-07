
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
typedef int DEFINE_MUTEX ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpcb_create_local_net (struct net*) ;
 scalar_t__ rpcb_create_local_unix (struct net*) ;
 scalar_t__ rpcb_get_local (struct net*) ;

int rpcb_create_local(struct net *net)
{
 static DEFINE_MUTEX(rpcb_create_local_mutex);
 int result = 0;

 if (rpcb_get_local(net))
  return result;

 mutex_lock(&rpcb_create_local_mutex);
 if (rpcb_get_local(net))
  goto out;

 if (rpcb_create_local_unix(net) != 0)
  result = rpcb_create_local_net(net);

out:
 mutex_unlock(&rpcb_create_local_mutex);
 return result;
}
