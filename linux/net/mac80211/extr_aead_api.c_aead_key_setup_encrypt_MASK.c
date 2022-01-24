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
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 struct crypto_aead* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*,size_t) ; 
 int FUNC3 (struct crypto_aead*,int /*<<< orphan*/  const*,size_t) ; 
 struct crypto_aead* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 

struct crypto_aead *
FUNC6(const char *alg, const u8 key[],
		       size_t key_len, size_t mic_len)
{
	struct crypto_aead *tfm;
	int err;

	tfm = FUNC4(alg, 0, CRYPTO_ALG_ASYNC);
	if (FUNC1(tfm))
		return tfm;

	err = FUNC3(tfm, key, key_len);
	if (err)
		goto free_aead;
	err = FUNC2(tfm, mic_len);
	if (err)
		goto free_aead;

	return tfm;

free_aead:
	FUNC5(tfm);
	return FUNC0(err);
}