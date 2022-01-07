
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 scalar_t__ IS_ERR (struct svc_serv*) ;
 int PTR_ERR (struct svc_serv*) ;
 struct svc_serv* lockd_create_svc () ;
 int lockd_down_net (struct svc_serv*,struct net*) ;
 int lockd_start_svc (struct svc_serv*) ;
 int lockd_unregister_notifiers () ;
 int lockd_up_net (struct svc_serv*,struct net*,struct cred const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlmsvc_mutex ;
 int nlmsvc_users ;
 int svc_destroy (struct svc_serv*) ;

int lockd_up(struct net *net, const struct cred *cred)
{
 struct svc_serv *serv;
 int error;

 mutex_lock(&nlmsvc_mutex);

 serv = lockd_create_svc();
 if (IS_ERR(serv)) {
  error = PTR_ERR(serv);
  goto err_create;
 }

 error = lockd_up_net(serv, net, cred);
 if (error < 0) {
  lockd_unregister_notifiers();
  goto err_put;
 }

 error = lockd_start_svc(serv);
 if (error < 0) {
  lockd_down_net(serv, net);
  goto err_put;
 }
 nlmsvc_users++;




err_put:
 svc_destroy(serv);
err_create:
 mutex_unlock(&nlmsvc_mutex);
 return error;
}
