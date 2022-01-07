
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_protocol; TYPE_1__* sk_prot; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct TYPE_6__ {scalar_t__ tfo_listener; } ;
struct TYPE_5__ {int fastopen_rsk; } ;
struct TYPE_4__ {int orphan_count; int (* disconnect ) (struct sock*,int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ IPPROTO_TCP ;
 int O_NONBLOCK ;
 int RCU_INIT_POINTER (int ,int *) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int percpu_counter_inc (int ) ;
 struct request_sock* rcu_access_pointer (int ) ;
 int sock_orphan (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 TYPE_3__* tcp_rsk (struct request_sock*) ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void inet_child_forget(struct sock *sk, struct request_sock *req,
         struct sock *child)
{
 sk->sk_prot->disconnect(child, O_NONBLOCK);

 sock_orphan(child);

 percpu_counter_inc(sk->sk_prot->orphan_count);

 if (sk->sk_protocol == IPPROTO_TCP && tcp_rsk(req)->tfo_listener) {
  BUG_ON(rcu_access_pointer(tcp_sk(child)->fastopen_rsk) != req);
  BUG_ON(sk != req->rsk_listener);







  RCU_INIT_POINTER(tcp_sk(child)->fastopen_rsk, ((void*)0));
 }
 inet_csk_destroy_sock(child);
}
