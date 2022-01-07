
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lowpan_iphc_ctx {int flags; } ;


 int EINVAL ;
 int LOWPAN_IPHC_CTX_FLAG_ACTIVE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lowpan_ctx_flag_active_set(void *data, u64 val)
{
 struct lowpan_iphc_ctx *ctx = data;

 if (val != 0 && val != 1)
  return -EINVAL;

 if (val)
  set_bit(LOWPAN_IPHC_CTX_FLAG_ACTIVE, &ctx->flags);
 else
  clear_bit(LOWPAN_IPHC_CTX_FLAG_ACTIVE, &ctx->flags);

 return 0;
}
