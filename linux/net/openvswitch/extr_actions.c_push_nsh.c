
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int mac_proto; } ;
struct sk_buff {int dummy; } ;
struct nshhdr {int dummy; } ;


 int MAC_PROTO_NONE ;
 int invalidate_flow_key (struct sw_flow_key*) ;
 int nsh_push (struct sk_buff*,struct nshhdr const*) ;

__attribute__((used)) static int push_nsh(struct sk_buff *skb, struct sw_flow_key *key,
      const struct nshhdr *nh)
{
 int err;

 err = nsh_push(skb, nh);
 if (err)
  return err;


 key->mac_proto = MAC_PROTO_NONE;
 invalidate_flow_key(key);
 return 0;
}
