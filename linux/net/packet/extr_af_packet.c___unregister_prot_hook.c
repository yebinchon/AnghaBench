
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {int bind_lock; int prot_hook; scalar_t__ fanout; scalar_t__ running; } ;


 int __dev_remove_pack (int *) ;
 int __fanout_unlink (struct sock*,struct packet_sock*) ;
 int __sock_put (struct sock*) ;
 int lockdep_assert_held_once (int *) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_net () ;

__attribute__((used)) static void __unregister_prot_hook(struct sock *sk, bool sync)
{
 struct packet_sock *po = pkt_sk(sk);

 lockdep_assert_held_once(&po->bind_lock);

 po->running = 0;

 if (po->fanout)
  __fanout_unlink(sk, po);
 else
  __dev_remove_pack(&po->prot_hook);

 __sock_put(sk);

 if (sync) {
  spin_unlock(&po->bind_lock);
  synchronize_net();
  spin_lock(&po->bind_lock);
 }
}
