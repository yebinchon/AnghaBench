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
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  blkcipher_alg ; 
 int /*<<< orphan*/  blksize ; 
 struct crypto_skcipher* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  ivsize ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct crypto_skcipher *tfm;

	tfm = FUNC2(blkcipher_alg, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm)) {
		FUNC6("encrypted_key: failed to alloc_cipher (%ld)\n",
		       FUNC1(tfm));
		return FUNC1(tfm);
	}
	ivsize = FUNC5(tfm);
	blksize = FUNC4(tfm);
	FUNC3(tfm);
	return 0;
}