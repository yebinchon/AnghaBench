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
typedef  int /*<<< orphan*/  u32 ;
struct des3_ede_ctx {int /*<<< orphan*/ * expkey; } ;

/* Variables and functions */
 unsigned int DES3_EDE_KEY_SIZE ; 
 int /*<<< orphan*/  DES_EXPKEY_WORDS ; 
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 int EINVAL ; 
 int ENOKEY ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC3(struct des3_ede_ctx *ctx, const u8 *key,
			unsigned int keylen)
{
	u32 *pe = ctx->expkey;
	int err;

	if (keylen != DES3_EDE_KEY_SIZE)
		return -EINVAL;

	err = FUNC0(key, keylen, true);
	if (err && err != -ENOKEY)
		return err;

	FUNC1(pe, key); pe += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
	FUNC2(pe, key); pe += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
	FUNC1(pe, key);

	return err;
}