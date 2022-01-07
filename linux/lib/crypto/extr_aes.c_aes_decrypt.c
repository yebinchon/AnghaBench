
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_aes_ctx {int* key_dec; int key_length; } ;


 int* aes_inv_sbox ;
 int get_unaligned_le32 (int const*) ;
 int const inv_mix_columns (int const) ;
 int const inv_subshift (int*,int) ;
 int put_unaligned_le32 (int const,int *) ;

void aes_decrypt(const struct crypto_aes_ctx *ctx, u8 *out, const u8 *in)
{
 const u32 *rkp = ctx->key_dec + 4;
 int rounds = 6 + ctx->key_length / 4;
 u32 st0[4], st1[4];
 int round;

 st0[0] = ctx->key_dec[0] ^ get_unaligned_le32(in);
 st0[1] = ctx->key_dec[1] ^ get_unaligned_le32(in + 4);
 st0[2] = ctx->key_dec[2] ^ get_unaligned_le32(in + 8);
 st0[3] = ctx->key_dec[3] ^ get_unaligned_le32(in + 12);







 st0[0] ^= aes_inv_sbox[ 0] ^ aes_inv_sbox[ 64] ^ aes_inv_sbox[129] ^ aes_inv_sbox[200];
 st0[1] ^= aes_inv_sbox[16] ^ aes_inv_sbox[ 83] ^ aes_inv_sbox[150] ^ aes_inv_sbox[212];
 st0[2] ^= aes_inv_sbox[32] ^ aes_inv_sbox[ 96] ^ aes_inv_sbox[160] ^ aes_inv_sbox[236];
 st0[3] ^= aes_inv_sbox[48] ^ aes_inv_sbox[112] ^ aes_inv_sbox[187] ^ aes_inv_sbox[247];

 for (round = 0;; round += 2, rkp += 8) {
  st1[0] = inv_mix_columns(inv_subshift(st0, 0)) ^ rkp[0];
  st1[1] = inv_mix_columns(inv_subshift(st0, 1)) ^ rkp[1];
  st1[2] = inv_mix_columns(inv_subshift(st0, 2)) ^ rkp[2];
  st1[3] = inv_mix_columns(inv_subshift(st0, 3)) ^ rkp[3];

  if (round == rounds - 2)
   break;

  st0[0] = inv_mix_columns(inv_subshift(st1, 0)) ^ rkp[4];
  st0[1] = inv_mix_columns(inv_subshift(st1, 1)) ^ rkp[5];
  st0[2] = inv_mix_columns(inv_subshift(st1, 2)) ^ rkp[6];
  st0[3] = inv_mix_columns(inv_subshift(st1, 3)) ^ rkp[7];
 }

 put_unaligned_le32(inv_subshift(st1, 0) ^ rkp[4], out);
 put_unaligned_le32(inv_subshift(st1, 1) ^ rkp[5], out + 4);
 put_unaligned_le32(inv_subshift(st1, 2) ^ rkp[6], out + 8);
 put_unaligned_le32(inv_subshift(st1, 3) ^ rkp[7], out + 12);
}
