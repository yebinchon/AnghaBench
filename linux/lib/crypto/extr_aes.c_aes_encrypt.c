
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_aes_ctx {int* key_enc; int key_length; } ;


 int* aes_sbox ;
 int get_unaligned_le32 (int const*) ;
 int const mix_columns (int const) ;
 int put_unaligned_le32 (int const,int *) ;
 int const subshift (int*,int) ;

void aes_encrypt(const struct crypto_aes_ctx *ctx, u8 *out, const u8 *in)
{
 const u32 *rkp = ctx->key_enc + 4;
 int rounds = 6 + ctx->key_length / 4;
 u32 st0[4], st1[4];
 int round;

 st0[0] = ctx->key_enc[0] ^ get_unaligned_le32(in);
 st0[1] = ctx->key_enc[1] ^ get_unaligned_le32(in + 4);
 st0[2] = ctx->key_enc[2] ^ get_unaligned_le32(in + 8);
 st0[3] = ctx->key_enc[3] ^ get_unaligned_le32(in + 12);







 st0[0] ^= aes_sbox[ 0] ^ aes_sbox[ 64] ^ aes_sbox[134] ^ aes_sbox[195];
 st0[1] ^= aes_sbox[16] ^ aes_sbox[ 82] ^ aes_sbox[158] ^ aes_sbox[221];
 st0[2] ^= aes_sbox[32] ^ aes_sbox[ 96] ^ aes_sbox[160] ^ aes_sbox[234];
 st0[3] ^= aes_sbox[48] ^ aes_sbox[112] ^ aes_sbox[186] ^ aes_sbox[241];

 for (round = 0;; round += 2, rkp += 8) {
  st1[0] = mix_columns(subshift(st0, 0)) ^ rkp[0];
  st1[1] = mix_columns(subshift(st0, 1)) ^ rkp[1];
  st1[2] = mix_columns(subshift(st0, 2)) ^ rkp[2];
  st1[3] = mix_columns(subshift(st0, 3)) ^ rkp[3];

  if (round == rounds - 2)
   break;

  st0[0] = mix_columns(subshift(st1, 0)) ^ rkp[4];
  st0[1] = mix_columns(subshift(st1, 1)) ^ rkp[5];
  st0[2] = mix_columns(subshift(st1, 2)) ^ rkp[6];
  st0[3] = mix_columns(subshift(st1, 3)) ^ rkp[7];
 }

 put_unaligned_le32(subshift(st1, 0) ^ rkp[4], out);
 put_unaligned_le32(subshift(st1, 1) ^ rkp[5], out + 4);
 put_unaligned_le32(subshift(st1, 2) ^ rkp[6], out + 8);
 put_unaligned_le32(subshift(st1, 3) ^ rkp[7], out + 12);
}
