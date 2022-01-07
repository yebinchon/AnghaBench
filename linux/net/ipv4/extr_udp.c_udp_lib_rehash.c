
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct udp_table {int dummy; } ;
struct udp_hslot {int lock; int count; int head; } ;
struct sock {int sk_reuseport_cb; TYPE_2__* sk_prot; } ;
struct TYPE_6__ {int udp_portaddr_node; int udp_port_hash; int udp_portaddr_hash; } ;
struct TYPE_4__ {struct udp_table* udp_table; } ;
struct TYPE_5__ {TYPE_1__ h; } ;


 int hlist_add_head_rcu (int *,int *) ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int reuseport_detach_sock (struct sock*) ;
 scalar_t__ sk_hashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 struct udp_hslot* udp_hashslot (struct udp_table*,int ,int ) ;
 struct udp_hslot* udp_hashslot2 (struct udp_table*,int ) ;
 TYPE_3__* udp_sk (struct sock*) ;

void udp_lib_rehash(struct sock *sk, u16 newhash)
{
 if (sk_hashed(sk)) {
  struct udp_table *udptable = sk->sk_prot->h.udp_table;
  struct udp_hslot *hslot, *hslot2, *nhslot2;

  hslot2 = udp_hashslot2(udptable, udp_sk(sk)->udp_portaddr_hash);
  nhslot2 = udp_hashslot2(udptable, newhash);
  udp_sk(sk)->udp_portaddr_hash = newhash;

  if (hslot2 != nhslot2 ||
      rcu_access_pointer(sk->sk_reuseport_cb)) {
   hslot = udp_hashslot(udptable, sock_net(sk),
          udp_sk(sk)->udp_port_hash);

   spin_lock_bh(&hslot->lock);
   if (rcu_access_pointer(sk->sk_reuseport_cb))
    reuseport_detach_sock(sk);

   if (hslot2 != nhslot2) {
    spin_lock(&hslot2->lock);
    hlist_del_init_rcu(&udp_sk(sk)->udp_portaddr_node);
    hslot2->count--;
    spin_unlock(&hslot2->lock);

    spin_lock(&nhslot2->lock);
    hlist_add_head_rcu(&udp_sk(sk)->udp_portaddr_node,
        &nhslot2->head);
    nhslot2->count++;
    spin_unlock(&nhslot2->lock);
   }

   spin_unlock_bh(&hslot->lock);
  }
 }
}
