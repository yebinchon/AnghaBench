
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct crypto_async_request {struct sk_buff* data; } ;


 int esp6_input_done2 (struct sk_buff*,int) ;
 int xfrm_input_resume (struct sk_buff*,int ) ;

__attribute__((used)) static void esp_input_done(struct crypto_async_request *base, int err)
{
 struct sk_buff *skb = base->data;

 xfrm_input_resume(skb, esp6_input_done2(skb, err));
}
