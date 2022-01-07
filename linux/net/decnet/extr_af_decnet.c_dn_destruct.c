
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_dst_cache; } ;
struct dn_scp {int other_receive_queue; int other_xmit_queue; int data_xmit_queue; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 int dst_release (int ) ;
 int rcu_dereference_protected (int ,int) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void dn_destruct(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 skb_queue_purge(&scp->data_xmit_queue);
 skb_queue_purge(&scp->other_xmit_queue);
 skb_queue_purge(&scp->other_receive_queue);

 dst_release(rcu_dereference_protected(sk->sk_dst_cache, 1));
}
