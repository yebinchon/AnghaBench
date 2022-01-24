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
typedef  int /*<<< orphan*/  const u8 ;
struct scatterlist {int dummy; } ;
struct fsverity_hash_alg {int /*<<< orphan*/  block_size; int /*<<< orphan*/  tfm; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  const* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ahash_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (struct ahash_request*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC15 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct scatterlist*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  wait ; 

const u8 *FUNC17(const struct fsverity_hash_alg *alg,
				      const u8 *salt, size_t salt_size)
{
	u8 *hashstate = NULL;
	struct ahash_request *req = NULL;
	u8 *padded_salt = NULL;
	size_t padded_salt_size;
	struct scatterlist sg;
	FUNC0(wait);
	int err;

	if (salt_size == 0)
		return NULL;

	hashstate = FUNC12(FUNC8(alg->tfm), GFP_KERNEL);
	if (!hashstate)
		return FUNC1(-ENOMEM);

	req = FUNC2(alg->tfm, GFP_KERNEL);
	if (!req) {
		err = -ENOMEM;
		goto err_free;
	}

	/*
	 * Zero-pad the salt to the next multiple of the input size of the hash
	 * algorithm's compression function, e.g. 64 bytes for SHA-256 or 128
	 * bytes for SHA-512.  This ensures that the hash algorithm won't have
	 * any bytes buffered internally after processing the salt, thus making
	 * salted hashing just as fast as unsalted hashing.
	 */
	padded_salt_size = FUNC15(salt_size, alg->block_size);
	padded_salt = FUNC13(padded_salt_size, GFP_KERNEL);
	if (!padded_salt) {
		err = -ENOMEM;
		goto err_free;
	}
	FUNC14(padded_salt, salt, salt_size);

	FUNC16(&sg, padded_salt, padded_salt_size);
	FUNC4(req, CRYPTO_TFM_REQ_MAY_SLEEP |
					CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &wait);
	FUNC5(req, &sg, NULL, padded_salt_size);

	err = FUNC10(FUNC7(req), &wait);
	if (err)
		goto err_free;

	err = FUNC10(FUNC9(req), &wait);
	if (err)
		goto err_free;

	err = FUNC6(req, hashstate);
	if (err)
		goto err_free;
out:
	FUNC3(req);
	FUNC11(padded_salt);
	return hashstate;

err_free:
	FUNC11(hashstate);
	hashstate = FUNC1(err);
	goto out;
}