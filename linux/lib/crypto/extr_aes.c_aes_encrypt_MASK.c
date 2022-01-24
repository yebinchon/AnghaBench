#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct crypto_aes_ctx {int* key_enc; int key_length; } ;

/* Variables and functions */
 int* aes_sbox ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int const FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ *) ; 
 int const FUNC3 (int*,int) ; 

void FUNC4(const struct crypto_aes_ctx *ctx, u8 *out, const u8 *in)
{
	const u32 *rkp = ctx->key_enc + 4;
	int rounds = 6 + ctx->key_length / 4;
	u32 st0[4], st1[4];
	int round;

	st0[0] = ctx->key_enc[0] ^ FUNC0(in);
	st0[1] = ctx->key_enc[1] ^ FUNC0(in + 4);
	st0[2] = ctx->key_enc[2] ^ FUNC0(in + 8);
	st0[3] = ctx->key_enc[3] ^ FUNC0(in + 12);

	/*
	 * Force the compiler to emit data independent Sbox references,
	 * by xoring the input with Sbox values that are known to add up
	 * to zero. This pulls the entire Sbox into the D-cache before any
	 * data dependent lookups are done.
	 */
	st0[0] ^= aes_sbox[ 0] ^ aes_sbox[ 64] ^ aes_sbox[134] ^ aes_sbox[195];
	st0[1] ^= aes_sbox[16] ^ aes_sbox[ 82] ^ aes_sbox[158] ^ aes_sbox[221];
	st0[2] ^= aes_sbox[32] ^ aes_sbox[ 96] ^ aes_sbox[160] ^ aes_sbox[234];
	st0[3] ^= aes_sbox[48] ^ aes_sbox[112] ^ aes_sbox[186] ^ aes_sbox[241];

	for (round = 0;; round += 2, rkp += 8) {
		st1[0] = FUNC1(FUNC3(st0, 0)) ^ rkp[0];
		st1[1] = FUNC1(FUNC3(st0, 1)) ^ rkp[1];
		st1[2] = FUNC1(FUNC3(st0, 2)) ^ rkp[2];
		st1[3] = FUNC1(FUNC3(st0, 3)) ^ rkp[3];

		if (round == rounds - 2)
			break;

		st0[0] = FUNC1(FUNC3(st1, 0)) ^ rkp[4];
		st0[1] = FUNC1(FUNC3(st1, 1)) ^ rkp[5];
		st0[2] = FUNC1(FUNC3(st1, 2)) ^ rkp[6];
		st0[3] = FUNC1(FUNC3(st1, 3)) ^ rkp[7];
	}

	FUNC2(FUNC3(st1, 0) ^ rkp[4], out);
	FUNC2(FUNC3(st1, 1) ^ rkp[5], out + 4);
	FUNC2(FUNC3(st1, 2) ^ rkp[6], out + 8);
	FUNC2(FUNC3(st1, 3) ^ rkp[7], out + 12);
}