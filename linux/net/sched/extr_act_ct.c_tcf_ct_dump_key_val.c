
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int TCA_CT_UNSPEC ;
 int memchr_inv (void*,int ,int) ;
 int nla_put (struct sk_buff*,int,int,void*) ;

__attribute__((used)) static int tcf_ct_dump_key_val(struct sk_buff *skb,
          void *val, int val_type,
          void *mask, int mask_type,
          int len)
{
 int err;

 if (mask && !memchr_inv(mask, 0, len))
  return 0;

 err = nla_put(skb, val_type, len, val);
 if (err)
  return err;

 if (mask_type != TCA_CT_UNSPEC) {
  err = nla_put(skb, mask_type, len, mask);
  if (err)
   return err;
 }

 return 0;
}
