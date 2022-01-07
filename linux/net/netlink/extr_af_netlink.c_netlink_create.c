
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ type; int sk; int state; } ;
struct netlink_sock {int (* netlink_bind ) (struct net*,int) ;void (* netlink_unbind ) (struct net*,int) ;struct module* module; } ;
struct net {int dummy; } ;
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct TYPE_2__ {int (* bind ) (struct net*,int) ;void (* unbind ) (struct net*,int) ;struct mutex* cb_mutex; struct module* module; scalar_t__ registered; } ;


 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int MAX_LINKS ;
 int PF_NETLINK ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 int SS_UNCONNECTED ;
 int __netlink_create (struct net*,struct socket*,struct mutex*,int,int) ;
 int array_index_nospec (int,int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int module_put (struct module*) ;
 int netlink_lock_table () ;
 int netlink_proto ;
 int netlink_unlock_table () ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (int ) ;
 int request_module (char*,int ,int) ;
 int sock_prot_inuse_add (struct net*,int *,int) ;
 scalar_t__ try_module_get (struct module*) ;

__attribute__((used)) static int netlink_create(struct net *net, struct socket *sock, int protocol,
     int kern)
{
 struct module *module = ((void*)0);
 struct mutex *cb_mutex;
 struct netlink_sock *nlk;
 int (*bind)(struct net *net, int group);
 void (*unbind)(struct net *net, int group);
 int err = 0;

 sock->state = SS_UNCONNECTED;

 if (sock->type != SOCK_RAW && sock->type != SOCK_DGRAM)
  return -ESOCKTNOSUPPORT;

 if (protocol < 0 || protocol >= MAX_LINKS)
  return -EPROTONOSUPPORT;
 protocol = array_index_nospec(protocol, MAX_LINKS);

 netlink_lock_table();







 if (nl_table[protocol].registered &&
     try_module_get(nl_table[protocol].module))
  module = nl_table[protocol].module;
 else
  err = -EPROTONOSUPPORT;
 cb_mutex = nl_table[protocol].cb_mutex;
 bind = nl_table[protocol].bind;
 unbind = nl_table[protocol].unbind;
 netlink_unlock_table();

 if (err < 0)
  goto out;

 err = __netlink_create(net, sock, cb_mutex, protocol, kern);
 if (err < 0)
  goto out_module;

 local_bh_disable();
 sock_prot_inuse_add(net, &netlink_proto, 1);
 local_bh_enable();

 nlk = nlk_sk(sock->sk);
 nlk->module = module;
 nlk->netlink_bind = bind;
 nlk->netlink_unbind = unbind;
out:
 return err;

out_module:
 module_put(module);
 goto out;
}
