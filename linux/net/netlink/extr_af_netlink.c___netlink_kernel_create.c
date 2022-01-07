
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_data_ready; } ;
struct netlink_sock {int flags; scalar_t__ netlink_rcv; } ;
struct netlink_kernel_cfg {int groups; scalar_t__ compare; int flags; int unbind; int bind; scalar_t__ input; struct mutex* cb_mutex; } ;
struct net {int dummy; } ;
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct listeners {int dummy; } ;
struct TYPE_2__ {int registered; unsigned int groups; scalar_t__ compare; int flags; int unbind; int bind; struct module* module; struct mutex* cb_mutex; int listeners; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int MAX_LINKS ;
 int NETLINK_F_KERNEL_SOCKET ;
 scalar_t__ NLGRPSZ (unsigned int) ;
 int PF_NETLINK ;
 int SOCK_DGRAM ;
 scalar_t__ __netlink_create (struct net*,struct socket*,struct mutex*,int,int) ;
 int kfree (struct listeners*) ;
 struct listeners* kzalloc (scalar_t__,int ) ;
 int netlink_data_ready ;
 scalar_t__ netlink_insert (struct sock*,int ) ;
 int netlink_kernel_release (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int rcu_assign_pointer (int ,struct listeners*) ;
 scalar_t__ sock_create_lite (int ,int ,int,struct socket**) ;
 int sock_release (struct socket*) ;

struct sock *
__netlink_kernel_create(struct net *net, int unit, struct module *module,
   struct netlink_kernel_cfg *cfg)
{
 struct socket *sock;
 struct sock *sk;
 struct netlink_sock *nlk;
 struct listeners *listeners = ((void*)0);
 struct mutex *cb_mutex = cfg ? cfg->cb_mutex : ((void*)0);
 unsigned int groups;

 BUG_ON(!nl_table);

 if (unit < 0 || unit >= MAX_LINKS)
  return ((void*)0);

 if (sock_create_lite(PF_NETLINK, SOCK_DGRAM, unit, &sock))
  return ((void*)0);

 if (__netlink_create(net, sock, cb_mutex, unit, 1) < 0)
  goto out_sock_release_nosk;

 sk = sock->sk;

 if (!cfg || cfg->groups < 32)
  groups = 32;
 else
  groups = cfg->groups;

 listeners = kzalloc(sizeof(*listeners) + NLGRPSZ(groups), GFP_KERNEL);
 if (!listeners)
  goto out_sock_release;

 sk->sk_data_ready = netlink_data_ready;
 if (cfg && cfg->input)
  nlk_sk(sk)->netlink_rcv = cfg->input;

 if (netlink_insert(sk, 0))
  goto out_sock_release;

 nlk = nlk_sk(sk);
 nlk->flags |= NETLINK_F_KERNEL_SOCKET;

 netlink_table_grab();
 if (!nl_table[unit].registered) {
  nl_table[unit].groups = groups;
  rcu_assign_pointer(nl_table[unit].listeners, listeners);
  nl_table[unit].cb_mutex = cb_mutex;
  nl_table[unit].module = module;
  if (cfg) {
   nl_table[unit].bind = cfg->bind;
   nl_table[unit].unbind = cfg->unbind;
   nl_table[unit].flags = cfg->flags;
   if (cfg->compare)
    nl_table[unit].compare = cfg->compare;
  }
  nl_table[unit].registered = 1;
 } else {
  kfree(listeners);
  nl_table[unit].registered++;
 }
 netlink_table_ungrab();
 return sk;

out_sock_release:
 kfree(listeners);
 netlink_kernel_release(sk);
 return ((void*)0);

out_sock_release_nosk:
 sock_release(sock);
 return ((void*)0);
}
