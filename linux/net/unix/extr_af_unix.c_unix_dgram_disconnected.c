
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; int sk_receive_queue; } ;
struct TYPE_2__ {int peer_wait; } ;


 int ECONNRESET ;
 int SOCK_DEAD ;
 int skb_queue_empty (int *) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 TYPE_1__* unix_sk (struct sock*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void unix_dgram_disconnected(struct sock *sk, struct sock *other)
{
 if (!skb_queue_empty(&sk->sk_receive_queue)) {
  skb_queue_purge(&sk->sk_receive_queue);
  wake_up_interruptible_all(&unix_sk(sk)->peer_wait);





  if (!sock_flag(other, SOCK_DEAD) && unix_peer(other) == sk) {
   other->sk_err = ECONNRESET;
   other->sk_error_report(other);
  }
 }
}
