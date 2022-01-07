
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct flow_dissector_key_ip {int ttl; int tos; } ;


 int TCA_FLOWER_KEY_ENC_IP_TOS ;
 int TCA_FLOWER_KEY_ENC_IP_TOS_MASK ;
 int TCA_FLOWER_KEY_ENC_IP_TTL ;
 int TCA_FLOWER_KEY_ENC_IP_TTL_MASK ;
 int TCA_FLOWER_KEY_IP_TOS ;
 int TCA_FLOWER_KEY_IP_TOS_MASK ;
 int TCA_FLOWER_KEY_IP_TTL ;
 int TCA_FLOWER_KEY_IP_TTL_MASK ;
 int fl_set_key_val (struct nlattr**,int *,int,int *,int,int) ;

__attribute__((used)) static void fl_set_key_ip(struct nlattr **tb, bool encap,
     struct flow_dissector_key_ip *key,
     struct flow_dissector_key_ip *mask)
{
 int tos_key = encap ? TCA_FLOWER_KEY_ENC_IP_TOS : TCA_FLOWER_KEY_IP_TOS;
 int ttl_key = encap ? TCA_FLOWER_KEY_ENC_IP_TTL : TCA_FLOWER_KEY_IP_TTL;
 int tos_mask = encap ? TCA_FLOWER_KEY_ENC_IP_TOS_MASK : TCA_FLOWER_KEY_IP_TOS_MASK;
 int ttl_mask = encap ? TCA_FLOWER_KEY_ENC_IP_TTL_MASK : TCA_FLOWER_KEY_IP_TTL_MASK;

 fl_set_key_val(tb, &key->tos, tos_key, &mask->tos, tos_mask, sizeof(key->tos));
 fl_set_key_val(tb, &key->ttl, ttl_key, &mask->ttl, ttl_mask, sizeof(key->ttl));
}
