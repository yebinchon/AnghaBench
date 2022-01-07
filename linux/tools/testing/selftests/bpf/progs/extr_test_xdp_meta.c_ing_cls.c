
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __u16 ;


 int ETH_ALEN ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int * ctx_ptr (struct __sk_buff*,int *) ;
 int round_up (int,int) ;

int ing_cls(struct __sk_buff *ctx)
{
 __u8 *data, *data_meta, *data_end;
 __u32 diff = 0;

 data_meta = ctx_ptr(ctx, data_meta);
 data_end = ctx_ptr(ctx, data_end);
 data = ctx_ptr(ctx, data);

 if (data + ETH_ALEN > data_end ||
     data_meta + round_up(ETH_ALEN, 4) > data)
  return TC_ACT_SHOT;

 diff |= ((__u32 *)data_meta)[0] ^ ((__u32 *)data)[0];
 diff |= ((__u16 *)data_meta)[2] ^ ((__u16 *)data)[2];

 return diff ? TC_ACT_SHOT : TC_ACT_OK;
}
