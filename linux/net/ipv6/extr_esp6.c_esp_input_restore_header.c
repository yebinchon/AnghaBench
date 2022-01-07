
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __skb_pull (struct sk_buff*,int) ;
 int esp_restore_header (struct sk_buff*,int ) ;

__attribute__((used)) static void esp_input_restore_header(struct sk_buff *skb)
{
 esp_restore_header(skb, 0);
 __skb_pull(skb, 4);
}
