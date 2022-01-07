
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; } ;
struct flow_keys {int dummy; } ;
struct TYPE_2__ {int keys_valid; int keys; } ;


 TYPE_1__* choke_skb_cb (struct sk_buff*) ;
 int make_flow_keys_digest (int *,struct flow_keys*) ;
 int memcmp (int *,int *,int) ;
 int skb_flow_dissect_flow_keys (struct sk_buff*,struct flow_keys*,int ) ;

__attribute__((used)) static bool choke_match_flow(struct sk_buff *skb1,
        struct sk_buff *skb2)
{
 struct flow_keys temp;

 if (skb1->protocol != skb2->protocol)
  return 0;

 if (!choke_skb_cb(skb1)->keys_valid) {
  choke_skb_cb(skb1)->keys_valid = 1;
  skb_flow_dissect_flow_keys(skb1, &temp, 0);
  make_flow_keys_digest(&choke_skb_cb(skb1)->keys, &temp);
 }

 if (!choke_skb_cb(skb2)->keys_valid) {
  choke_skb_cb(skb2)->keys_valid = 1;
  skb_flow_dissect_flow_keys(skb2, &temp, 0);
  make_flow_keys_digest(&choke_skb_cb(skb2)->keys, &temp);
 }

 return !memcmp(&choke_skb_cb(skb1)->keys,
         &choke_skb_cb(skb2)->keys,
         sizeof(choke_skb_cb(skb1)->keys));
}
