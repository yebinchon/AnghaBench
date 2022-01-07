
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {size_t sk_protocol; int sk_write_queue; } ;
struct netlink_sock {int ngroups; int rcu; int module; scalar_t__ portid; scalar_t__ bound; int wait; int (* netlink_unbind ) (int ,int) ;int groups; } ;
struct netlink_notify {size_t protocol; scalar_t__ portid; int net; } ;
struct listeners {int dummy; } ;
struct TYPE_2__ {scalar_t__ registered; scalar_t__ flags; int * unbind; int * bind; int * module; int listeners; } ;


 int BUG_ON (int) ;
 size_t NETLINK_GENERIC ;
 int NETLINK_URELEASE ;
 int RCU_INIT_POINTER (int ,int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int blocking_notifier_call_chain (int *,int ,struct netlink_notify*) ;
 int call_rcu (int *,int ) ;
 int deferred_put_nlk_sk ;
 int genl_sk_destructing_cnt ;
 int genl_sk_destructing_waitq ;
 int kfree_rcu (struct listeners*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int module_put (int ) ;
 int netlink_chain ;
 scalar_t__ netlink_is_kernel (struct sock*) ;
 int netlink_proto ;
 int netlink_remove (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 struct listeners* nl_deref_protected (int ) ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int rcu ;
 int skb_queue_purge (int *) ;
 int sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_prot_inuse_add (int ,int *,int) ;
 int stub1 (int ,int) ;
 scalar_t__ test_bit (int,int ) ;
 int wake_up (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int netlink_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct netlink_sock *nlk;

 if (!sk)
  return 0;

 netlink_remove(sk);
 sock_orphan(sk);
 nlk = nlk_sk(sk);
 if (nlk->netlink_unbind) {
  int i;

  for (i = 0; i < nlk->ngroups; i++)
   if (test_bit(i, nlk->groups))
    nlk->netlink_unbind(sock_net(sk), i + 1);
 }
 if (sk->sk_protocol == NETLINK_GENERIC &&
     atomic_dec_return(&genl_sk_destructing_cnt) == 0)
  wake_up(&genl_sk_destructing_waitq);

 sock->sk = ((void*)0);
 wake_up_interruptible_all(&nlk->wait);

 skb_queue_purge(&sk->sk_write_queue);

 if (nlk->portid && nlk->bound) {
  struct netlink_notify n = {
      .net = sock_net(sk),
      .protocol = sk->sk_protocol,
      .portid = nlk->portid,
       };
  blocking_notifier_call_chain(&netlink_chain,
    NETLINK_URELEASE, &n);
 }

 module_put(nlk->module);

 if (netlink_is_kernel(sk)) {
  netlink_table_grab();
  BUG_ON(nl_table[sk->sk_protocol].registered == 0);
  if (--nl_table[sk->sk_protocol].registered == 0) {
   struct listeners *old;

   old = nl_deref_protected(nl_table[sk->sk_protocol].listeners);
   RCU_INIT_POINTER(nl_table[sk->sk_protocol].listeners, ((void*)0));
   kfree_rcu(old, rcu);
   nl_table[sk->sk_protocol].module = ((void*)0);
   nl_table[sk->sk_protocol].bind = ((void*)0);
   nl_table[sk->sk_protocol].unbind = ((void*)0);
   nl_table[sk->sk_protocol].flags = 0;
   nl_table[sk->sk_protocol].registered = 0;
  }
  netlink_table_ungrab();
 }

 local_bh_disable();
 sock_prot_inuse_add(sock_net(sk), &netlink_proto, -1);
 local_bh_enable();
 call_rcu(&nlk->rcu, deferred_put_nlk_sk);
 return 0;
}
