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
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 scalar_t__ FUNC5 (struct crypto_shash*) ; 
 int FUNC6 (struct shash_desc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct crypto_shash*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct shash_desc*) ; 
 struct shash_desc* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(u8 *key, u8 ksize, char *plaintext, u8 psize, u8 *output)
{
	struct crypto_shash *tfm;
	struct shash_desc *shash;
	int ret;

	if (!ksize)
		return -EINVAL;

	tfm = FUNC3("hmac(sha256)", 0, 0);
	if (FUNC1(tfm)) {
		FUNC0("crypto_alloc_ahash failed: err %ld", FUNC2(tfm));
		return FUNC2(tfm);
	}

	ret = FUNC7(tfm, key, ksize);
	if (ret) {
		FUNC0("crypto_ahash_setkey failed: err %d", ret);
		goto failed;
	}

	shash = FUNC9(sizeof(*shash) + FUNC5(tfm),
			GFP_KERNEL);
	if (!shash) {
		ret = -ENOMEM;
		goto failed;
	}

	shash->tfm = tfm;

	ret = FUNC6(shash, plaintext, psize, output);

	FUNC8(shash);

failed:
	FUNC4(tfm);
	return ret;
}