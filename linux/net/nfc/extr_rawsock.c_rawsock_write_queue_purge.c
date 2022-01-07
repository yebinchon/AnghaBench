
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct sock {TYPE_2__ sk_write_queue; } ;
struct TYPE_3__ {int tx_work_scheduled; } ;


 int __skb_queue_purge (TYPE_2__*) ;
 TYPE_1__* nfc_rawsock (struct sock*) ;
 int pr_debug (char*,struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rawsock_write_queue_purge(struct sock *sk)
{
 pr_debug("sk=%p\n", sk);

 spin_lock_bh(&sk->sk_write_queue.lock);
 __skb_queue_purge(&sk->sk_write_queue);
 nfc_rawsock(sk)->tx_work_scheduled = 0;
 spin_unlock_bh(&sk->sk_write_queue.lock);
}
