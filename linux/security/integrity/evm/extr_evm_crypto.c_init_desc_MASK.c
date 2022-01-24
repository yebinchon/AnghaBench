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
typedef  size_t uint8_t ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_NOLOAD ; 
 long EINVAL ; 
 long ENOKEY ; 
 long ENOMEM ; 
 struct shash_desc* FUNC0 (long) ; 
 int EVM_INIT_HMAC ; 
 char EVM_XATTR_HMAC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HASH_ALGO__LAST ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 long FUNC2 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 scalar_t__ FUNC5 (struct crypto_shash*) ; 
 long FUNC6 (struct shash_desc*) ; 
 long FUNC7 (struct crypto_shash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* evm_hmac ; 
 int evm_initialized ; 
 struct crypto_shash** evm_tfm ; 
 int /*<<< orphan*/  evmkey ; 
 int /*<<< orphan*/  evmkey_len ; 
 char** hash_algo_name ; 
 struct crypto_shash* hmac_tfm ; 
 int /*<<< orphan*/  FUNC8 (struct shash_desc*) ; 
 struct shash_desc* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,long) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static struct shash_desc *FUNC14(char type, uint8_t hash_algo)
{
	long rc;
	const char *algo;
	struct crypto_shash **tfm;
	struct shash_desc *desc;

	if (type == EVM_XATTR_HMAC) {
		if (!(evm_initialized & EVM_INIT_HMAC)) {
			FUNC13("HMAC key is not set\n");
			return FUNC0(-ENOKEY);
		}
		tfm = &hmac_tfm;
		algo = evm_hmac;
	} else {
		if (hash_algo >= HASH_ALGO__LAST)
			return FUNC0(-EINVAL);

		tfm = &evm_tfm[hash_algo];
		algo = hash_algo_name[hash_algo];
	}

	if (*tfm == NULL) {
		FUNC10(&mutex);
		if (*tfm)
			goto out;
		*tfm = FUNC3(algo, 0, CRYPTO_NOLOAD);
		if (FUNC1(*tfm)) {
			rc = FUNC2(*tfm);
			FUNC12("Can not allocate %s (reason: %ld)\n", algo, rc);
			*tfm = NULL;
			FUNC11(&mutex);
			return FUNC0(rc);
		}
		if (type == EVM_XATTR_HMAC) {
			rc = FUNC7(*tfm, evmkey, evmkey_len);
			if (rc) {
				FUNC4(*tfm);
				*tfm = NULL;
				FUNC11(&mutex);
				return FUNC0(rc);
			}
		}
out:
		FUNC11(&mutex);
	}

	desc = FUNC9(sizeof(*desc) + FUNC5(*tfm),
			GFP_KERNEL);
	if (!desc)
		return FUNC0(-ENOMEM);

	desc->tfm = *tfm;

	rc = FUNC6(desc);
	if (rc) {
		FUNC8(desc);
		return FUNC0(rc);
	}
	return desc;
}