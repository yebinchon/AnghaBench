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
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ENOMEM ; 
 struct skcipher_request* FUNC0 (struct crypto_skcipher*) ; 
 struct skcipher_request* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 int blkcipher_alg ; 
 struct crypto_skcipher* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*) ; 
 int FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 struct skcipher_request* FUNC8 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct skcipher_request *FUNC10(const u8 *key,
						  unsigned int key_len)
{
	struct skcipher_request *req;
	struct crypto_skcipher *tfm;
	int ret;

	tfm = FUNC4(blkcipher_alg, 0, CRYPTO_ALG_ASYNC);
	if (FUNC2(tfm)) {
		FUNC7("encrypted_key: failed to load %s transform (%ld)\n",
		       blkcipher_alg, FUNC3(tfm));
		return FUNC0(tfm);
	}

	ret = FUNC6(tfm, key, key_len);
	if (ret < 0) {
		FUNC7("encrypted_key: failed to setkey (%d)\n", ret);
		FUNC5(tfm);
		return FUNC1(ret);
	}

	req = FUNC8(tfm, GFP_KERNEL);
	if (!req) {
		FUNC7("encrypted_key: failed to allocate request for %s\n",
		       blkcipher_alg);
		FUNC5(tfm);
		return FUNC1(-ENOMEM);
	}

	FUNC9(req, 0, NULL, NULL);
	return req;
}