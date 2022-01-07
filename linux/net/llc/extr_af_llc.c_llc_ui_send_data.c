
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ p_flag; scalar_t__ remote_busy_flag; int state; } ;


 int kfree_skb (struct sk_buff*) ;
 int llc_build_and_send_pkt (struct sock*,struct sk_buff*) ;
 scalar_t__ llc_data_accept_state (int ) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int llc_ui_wait_for_busy_core (struct sock*,long) ;
 long sock_sndtimeo (struct sock*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int llc_ui_send_data(struct sock* sk, struct sk_buff *skb, int noblock)
{
 struct llc_sock* llc = llc_sk(sk);

 if (unlikely(llc_data_accept_state(llc->state) ||
       llc->remote_busy_flag ||
       llc->p_flag)) {
  long timeout = sock_sndtimeo(sk, noblock);
  int rc;

  rc = llc_ui_wait_for_busy_core(sk, timeout);
  if (rc) {
   kfree_skb(skb);
   return rc;
  }
 }
 return llc_build_and_send_pkt(sk, skb);
}
