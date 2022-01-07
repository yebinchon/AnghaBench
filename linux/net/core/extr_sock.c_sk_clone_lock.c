
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int * tail; int head; } ;
struct sock {int sk_userlocks; int sk_flags; TYPE_2__* sk_prot; int sk_wq; int sk_refcnt; int sk_net_refcnt; int sk_incoming_cpu; scalar_t__ sk_priority; scalar_t__ sk_err_soft; scalar_t__ sk_err; int sk_reuseport_cb; int sk_filter; int sk_cgrp_data; int sk_zckey; int * sk_send_head; int sk_drops; scalar_t__ sk_forward_alloc; scalar_t__ sk_wmem_queued; scalar_t__ sk_dst_pending_confirm; int * sk_dst_cache; int sk_omem_alloc; int sk_wmem_alloc; int sk_rmem_alloc; TYPE_1__ sk_backlog; int sk_node; TYPE_2__* sk_prot_creator; int sk_family; } ;
struct sk_filter {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {scalar_t__ sockets_allocated; } ;


 int RCU_INIT_POINTER (int ,struct sk_filter*) ;
 int SK_FLAGS_TIMESTAMP ;
 int SOCK_BINDPORT_LOCK ;
 int SOCK_DONE ;
 int atomic_set (int *,int ) ;
 int bh_lock_sock (struct sock*) ;
 scalar_t__ bpf_sk_storage_clone (struct sock const*,struct sock*) ;
 int cgroup_sk_alloc (int *) ;
 int get_net (int ) ;
 scalar_t__ likely (int ) ;
 int mem_cgroup_sk_alloc (struct sock*) ;
 int net_enable_timestamp () ;
 int raw_smp_processor_id () ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_set (int *,int) ;
 int sk_filter_charge (struct sock*,struct sk_filter*) ;
 int sk_free_unlock_clone (struct sock*) ;
 int sk_init_common (struct sock*) ;
 int sk_node_init (int *) ;
 struct sock* sk_prot_alloc (TYPE_2__*,int const,int ) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int sk_set_socket (struct sock*,int *) ;
 int sk_sockets_allocated_inc (struct sock*) ;
 int smp_wmb () ;
 int sock_copy (struct sock*,struct sock const*) ;
 int sock_inuse_add (int ,int) ;
 int sock_lock_init (struct sock*) ;
 scalar_t__ sock_needs_netstamp (struct sock const*) ;
 int sock_net (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xfrm_sk_clone_policy (struct sock*,struct sock const*) ;

struct sock *sk_clone_lock(const struct sock *sk, const gfp_t priority)
{
 struct sock *newsk;
 bool is_charged = 1;

 newsk = sk_prot_alloc(sk->sk_prot, priority, sk->sk_family);
 if (newsk != ((void*)0)) {
  struct sk_filter *filter;

  sock_copy(newsk, sk);

  newsk->sk_prot_creator = sk->sk_prot;


  if (likely(newsk->sk_net_refcnt))
   get_net(sock_net(newsk));
  sk_node_init(&newsk->sk_node);
  sock_lock_init(newsk);
  bh_lock_sock(newsk);
  newsk->sk_backlog.head = newsk->sk_backlog.tail = ((void*)0);
  newsk->sk_backlog.len = 0;

  atomic_set(&newsk->sk_rmem_alloc, 0);



  refcount_set(&newsk->sk_wmem_alloc, 1);
  atomic_set(&newsk->sk_omem_alloc, 0);
  sk_init_common(newsk);

  newsk->sk_dst_cache = ((void*)0);
  newsk->sk_dst_pending_confirm = 0;
  newsk->sk_wmem_queued = 0;
  newsk->sk_forward_alloc = 0;
  atomic_set(&newsk->sk_drops, 0);
  newsk->sk_send_head = ((void*)0);
  newsk->sk_userlocks = sk->sk_userlocks & ~SOCK_BINDPORT_LOCK;
  atomic_set(&newsk->sk_zckey, 0);

  sock_reset_flag(newsk, SOCK_DONE);
  mem_cgroup_sk_alloc(newsk);
  cgroup_sk_alloc(&newsk->sk_cgrp_data);

  rcu_read_lock();
  filter = rcu_dereference(sk->sk_filter);
  if (filter != ((void*)0))




   is_charged = sk_filter_charge(newsk, filter);
  RCU_INIT_POINTER(newsk->sk_filter, filter);
  rcu_read_unlock();

  if (unlikely(!is_charged || xfrm_sk_clone_policy(newsk, sk))) {




   if (!is_charged)
    RCU_INIT_POINTER(newsk->sk_filter, ((void*)0));
   sk_free_unlock_clone(newsk);
   newsk = ((void*)0);
   goto out;
  }
  RCU_INIT_POINTER(newsk->sk_reuseport_cb, ((void*)0));

  if (bpf_sk_storage_clone(sk, newsk)) {
   sk_free_unlock_clone(newsk);
   newsk = ((void*)0);
   goto out;
  }

  newsk->sk_err = 0;
  newsk->sk_err_soft = 0;
  newsk->sk_priority = 0;
  newsk->sk_incoming_cpu = raw_smp_processor_id();
  if (likely(newsk->sk_net_refcnt))
   sock_inuse_add(sock_net(newsk), 1);





  smp_wmb();
  refcount_set(&newsk->sk_refcnt, 2);
  sk_refcnt_debug_inc(newsk);
  sk_set_socket(newsk, ((void*)0));
  RCU_INIT_POINTER(newsk->sk_wq, ((void*)0));

  if (newsk->sk_prot->sockets_allocated)
   sk_sockets_allocated_inc(newsk);

  if (sock_needs_netstamp(sk) &&
      newsk->sk_flags & SK_FLAGS_TIMESTAMP)
   net_enable_timestamp();
 }
out:
 return newsk;
}
