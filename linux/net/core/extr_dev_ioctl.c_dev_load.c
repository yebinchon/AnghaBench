
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int CAP_NET_ADMIN ;
 int CAP_SYS_MODULE ;
 scalar_t__ capable (int ) ;
 struct net_device* dev_get_by_name_rcu (struct net*,char const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,char const*) ;

void dev_load(struct net *net, const char *name)
{
 struct net_device *dev;
 int no_module;

 rcu_read_lock();
 dev = dev_get_by_name_rcu(net, name);
 rcu_read_unlock();

 no_module = !dev;
 if (no_module && capable(CAP_NET_ADMIN))
  no_module = request_module("netdev-%s", name);
 if (no_module && capable(CAP_SYS_MODULE))
  request_module("%s", name);
}
