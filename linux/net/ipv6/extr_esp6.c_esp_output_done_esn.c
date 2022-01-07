
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct crypto_async_request {struct sk_buff* data; } ;


 int esp_output_done (struct crypto_async_request*,int) ;
 int esp_output_restore_header (struct sk_buff*) ;

__attribute__((used)) static void esp_output_done_esn(struct crypto_async_request *base, int err)
{
 struct sk_buff *skb = base->data;

 esp_output_restore_header(skb);
 esp_output_done(base, err);
}
