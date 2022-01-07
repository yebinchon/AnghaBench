
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct udp_table {int dummy; } ;
struct udp_hslot {int lock; int count; } ;
struct sock {TYPE_3__* sk_prot; int sk_reuseport_cb; } ;
struct TYPE_8__ {scalar_t__ inet_num; } ;
struct TYPE_5__ {struct udp_table* udp_table; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct TYPE_6__ {int udp_portaddr_node; int udp_portaddr_hash; int udp_port_hash; } ;


 int hlist_del_init_rcu (int *) ;
 TYPE_4__* inet_sk (struct sock*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int reuseport_detach_sock (struct sock*) ;
 scalar_t__ sk_del_node_init_rcu (struct sock*) ;
 scalar_t__ sk_hashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_3__*,int) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 struct udp_hslot* udp_hashslot (struct udp_table*,int ,int ) ;
 struct udp_hslot* udp_hashslot2 (struct udp_table*,int ) ;
 TYPE_2__* udp_sk (struct sock*) ;

void udp_lib_unhash(struct sock *sk)
{
 if (sk_hashed(sk)) {
  struct udp_table *udptable = sk->sk_prot->h.udp_table;
  struct udp_hslot *hslot, *hslot2;

  hslot = udp_hashslot(udptable, sock_net(sk),
          udp_sk(sk)->udp_port_hash);
  hslot2 = udp_hashslot2(udptable, udp_sk(sk)->udp_portaddr_hash);

  spin_lock_bh(&hslot->lock);
  if (rcu_access_pointer(sk->sk_reuseport_cb))
   reuseport_detach_sock(sk);
  if (sk_del_node_init_rcu(sk)) {
   hslot->count--;
   inet_sk(sk)->inet_num = 0;
   sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);

   spin_lock(&hslot2->lock);
   hlist_del_init_rcu(&udp_sk(sk)->udp_portaddr_node);
   hslot2->count--;
   spin_unlock(&hslot2->lock);
  }
  spin_unlock_bh(&hslot->lock);
 }
}
