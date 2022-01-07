
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int ee_data; int ee_info; scalar_t__ ee_pad; int ee_code; scalar_t__ ee_type; int ee_origin; int ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sk_buff {int tstamp; TYPE_2__* sk; } ;
typedef int ktime_t ;
struct TYPE_4__ {int sk_txtime_report_errors; } ;


 int GFP_ATOMIC ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_TXTIME ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_queue_err_skb (TYPE_2__*,struct sk_buff*) ;

__attribute__((used)) static void report_sock_error(struct sk_buff *skb, u32 err, u8 code)
{
 struct sock_exterr_skb *serr;
 struct sk_buff *clone;
 ktime_t txtime = skb->tstamp;

 if (!skb->sk || !(skb->sk->sk_txtime_report_errors))
  return;

 clone = skb_clone(skb, GFP_ATOMIC);
 if (!clone)
  return;

 serr = SKB_EXT_ERR(clone);
 serr->ee.ee_errno = err;
 serr->ee.ee_origin = SO_EE_ORIGIN_TXTIME;
 serr->ee.ee_type = 0;
 serr->ee.ee_code = code;
 serr->ee.ee_pad = 0;
 serr->ee.ee_data = (txtime >> 32);
 serr->ee.ee_info = txtime;

 if (sock_queue_err_skb(skb->sk, clone))
  kfree_skb(clone);
}
