
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;
struct net {int user_ns; } ;
struct fib_table {int dummy; } ;
struct fib_config {int fc_mx; int fc_table; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int ENOBUFS ;
 int EPERM ;
 int ESRCH ;


 struct fib_table* fib_get_table (struct net*,int ) ;
 struct fib_table* fib_new_table (struct net*,int ) ;
 int fib_table_delete (struct net*,struct fib_table*,struct fib_config*,int *) ;
 int fib_table_insert (struct net*,struct fib_table*,struct fib_config*,int *) ;
 int kfree (int ) ;
 int ns_capable (int ,int ) ;
 int rtentry_to_fib_config (struct net*,unsigned int,struct rtentry*,struct fib_config*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int ip_rt_ioctl(struct net *net, unsigned int cmd, struct rtentry *rt)
{
 struct fib_config cfg;
 int err;

 switch (cmd) {
 case 129:
 case 128:
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   return -EPERM;

  rtnl_lock();
  err = rtentry_to_fib_config(net, cmd, rt, &cfg);
  if (err == 0) {
   struct fib_table *tb;

   if (cmd == 128) {
    tb = fib_get_table(net, cfg.fc_table);
    if (tb)
     err = fib_table_delete(net, tb, &cfg,
              ((void*)0));
    else
     err = -ESRCH;
   } else {
    tb = fib_new_table(net, cfg.fc_table);
    if (tb)
     err = fib_table_insert(net, tb,
              &cfg, ((void*)0));
    else
     err = -ENOBUFS;
   }


   kfree(cfg.fc_mx);
  }
  rtnl_unlock();
  return err;
 }
 return -EINVAL;
}
