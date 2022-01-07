
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des_ctx {int * expkey; } ;


 int DES_EXPKEY_WORDS ;
 int FP (int ,int ,int ) ;
 int IP (int ,int ,int ) ;
 int ROUND (int ,int ,int ,int ,int const*,int) ;
 int get_unaligned_le32 (int const*) ;
 int put_unaligned_le32 (int ,int *) ;

void des_decrypt(const struct des_ctx *ctx, u8 *dst, const u8 *src)
{
 const u32 *K = ctx->expkey + DES_EXPKEY_WORDS - 2;
 u32 L, R, A, B;
 int i;

 L = get_unaligned_le32(src);
 R = get_unaligned_le32(src + 4);

 IP(L, R, A);
 for (i = 0; i < 8; i++) {
  ROUND(L, R, A, B, K, -2);
  ROUND(R, L, A, B, K, -2);
 }
 FP(R, L, A);

 put_unaligned_le32(R, dst);
 put_unaligned_le32(L, dst + 4);
}
