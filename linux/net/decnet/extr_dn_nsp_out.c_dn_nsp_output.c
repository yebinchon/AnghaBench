
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {scalar_t__ flowrem_sw; int snd_window; int data_xmit_queue; int other_xmit_queue; } ;


 scalar_t__ DN_SEND ;
 struct dn_scp* DN_SK (struct sock*) ;
 int GFP_ATOMIC ;
 int NSP_MIN_WINDOW ;
 unsigned int dn_nsp_clone_and_send (struct sk_buff*,int ) ;
 struct sk_buff* skb_peek (int *) ;

void dn_nsp_output(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);
 struct sk_buff *skb;
 unsigned int reduce_win = 0;




 if ((skb = skb_peek(&scp->other_xmit_queue)) != ((void*)0))
  reduce_win = dn_nsp_clone_and_send(skb, GFP_ATOMIC);






 if (reduce_win || (scp->flowrem_sw != DN_SEND))
  goto recalc_window;

 if ((skb = skb_peek(&scp->data_xmit_queue)) != ((void*)0))
  reduce_win = dn_nsp_clone_and_send(skb, GFP_ATOMIC);






recalc_window:
 if (reduce_win) {
  scp->snd_window >>= 1;
  if (scp->snd_window < NSP_MIN_WINDOW)
   scp->snd_window = NSP_MIN_WINDOW;
 }
}
