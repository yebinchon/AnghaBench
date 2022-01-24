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
struct inode {int dummy; } ;
typedef  struct fsverity_hash_alg {unsigned int name; scalar_t__ digest_size; scalar_t__ block_size; int /*<<< orphan*/  tfm; } const fsverity_hash_alg ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct fsverity_hash_alg const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOPKG ; 
 struct fsverity_hash_alg const* FUNC1 (struct crypto_ahash*) ; 
 struct fsverity_hash_alg const* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct crypto_ahash*) ; 
 scalar_t__ FUNC8 (struct crypto_ahash*) ; 
 scalar_t__ FUNC9 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC11 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode const*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 struct fsverity_hash_alg const* fsverity_hash_algs ; 
 int /*<<< orphan*/  FUNC14 (struct inode const*,char*,unsigned int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int,int /*<<< orphan*/ ) ; 

const struct fsverity_hash_alg *FUNC17(const struct inode *inode,
						      unsigned int num)
{
	struct fsverity_hash_alg *alg;
	struct crypto_ahash *tfm;
	int err;

	if (num >= FUNC0(fsverity_hash_algs) ||
	    !fsverity_hash_algs[num].name) {
		FUNC14(inode, "Unknown hash algorithm number: %u", num);
		return FUNC2(-EINVAL);
	}
	alg = &fsverity_hash_algs[num];

	/* pairs with cmpxchg() below */
	tfm = FUNC5(alg->tfm);
	if (FUNC15(tfm != NULL))
		return alg;
	/*
	 * Using the shash API would make things a bit simpler, but the ahash
	 * API is preferable as it allows the use of crypto accelerators.
	 */
	tfm = FUNC11(alg->name, 0, 0);
	if (FUNC3(tfm)) {
		if (FUNC4(tfm) == -ENOENT) {
			FUNC14(inode,
				      "Missing crypto API support for hash algorithm \"%s\"",
				      alg->name);
			return FUNC2(-ENOPKG);
		}
		FUNC13(inode,
			     "Error allocating hash algorithm \"%s\": %ld",
			     alg->name, FUNC4(tfm));
		return FUNC1(tfm);
	}

	err = -EINVAL;
	if (FUNC6(alg->digest_size != FUNC9(tfm)))
		goto err_free_tfm;
	if (FUNC6(alg->block_size != FUNC8(tfm)))
		goto err_free_tfm;

	FUNC16("%s using implementation \"%s\"\n",
		alg->name, FUNC10(tfm));

	/* pairs with READ_ONCE() above */
	if (FUNC7(&alg->tfm, NULL, tfm) != NULL)
		FUNC12(tfm);

	return alg;

err_free_tfm:
	FUNC12(tfm);
	return FUNC2(err);
}