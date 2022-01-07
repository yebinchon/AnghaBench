
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_bind_node; } ;


 int hlist_del_init (int *) ;
 int l2tp_ip6_lock ;
 int sk_common_release (struct sock*) ;
 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void l2tp_ip6_close(struct sock *sk, long timeout)
{
 write_lock_bh(&l2tp_ip6_lock);
 hlist_del_init(&sk->sk_bind_node);
 sk_del_node_init(sk);
 write_unlock_bh(&l2tp_ip6_lock);

 sk_common_release(sk);
}
