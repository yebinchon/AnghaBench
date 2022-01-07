
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
typedef struct sk_buff sk_buff ;


 int ECONNREFUSED ;
 int EPERM ;
 int consume_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int skb_get (struct sk_buff*) ;
 int skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;
 void stub1 (struct sk_buff*) ;
 void stub2 (struct sk_buff*) ;
 void stub3 (struct sk_buff*) ;

__attribute__((used)) static int kauditd_send_queue(struct sock *sk, u32 portid,
         struct sk_buff_head *queue,
         unsigned int retry_limit,
         void (*skb_hook)(struct sk_buff *skb),
         void (*err_hook)(struct sk_buff *skb))
{
 int rc = 0;
 struct sk_buff *skb;
 static unsigned int failed = 0;




 while ((skb = skb_dequeue(queue))) {

  if (skb_hook)
   (*skb_hook)(skb);


  if (!sk) {
   if (err_hook)
    (*err_hook)(skb);
   continue;
  }


  skb_get(skb);
  rc = netlink_unicast(sk, skb, portid, 0);
  if (rc < 0) {

   if (++failed >= retry_limit ||
       rc == -ECONNREFUSED || rc == -EPERM) {

    sk = ((void*)0);
    if (err_hook)
     (*err_hook)(skb);
    if (!skb_hook)
     goto out;

    continue;
   } else

    skb_queue_head(queue, skb);
  } else {

   consume_skb(skb);
   failed = 0;
  }
 }

out:
 return (rc >= 0 ? 0 : rc);
}
