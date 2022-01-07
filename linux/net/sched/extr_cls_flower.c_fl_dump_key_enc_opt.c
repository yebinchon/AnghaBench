
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct flow_dissector_key_enc_opts {int dummy; } ;


 int TCA_FLOWER_KEY_ENC_OPTS ;
 int TCA_FLOWER_KEY_ENC_OPTS_MASK ;
 int fl_dump_key_options (struct sk_buff*,int ,struct flow_dissector_key_enc_opts*) ;

__attribute__((used)) static int fl_dump_key_enc_opt(struct sk_buff *skb,
          struct flow_dissector_key_enc_opts *key_opts,
          struct flow_dissector_key_enc_opts *msk_opts)
{
 int err;

 err = fl_dump_key_options(skb, TCA_FLOWER_KEY_ENC_OPTS, key_opts);
 if (err)
  return err;

 return fl_dump_key_options(skb, TCA_FLOWER_KEY_ENC_OPTS_MASK, msk_opts);
}
