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
struct scatterlist {int dummy; } ;
struct fsverity_hash_alg {int /*<<< orphan*/  tfm; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ahash_request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,void const*,size_t) ; 
 int /*<<< orphan*/  wait ; 

int FUNC8(const struct fsverity_hash_alg *alg,
			 const void *data, size_t size, u8 *out)
{
	struct ahash_request *req;
	struct scatterlist sg;
	FUNC0(wait);
	int err;

	req = FUNC1(alg->tfm, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC7(&sg, data, size);
	FUNC3(req, CRYPTO_TFM_REQ_MAY_SLEEP |
					CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &wait);
	FUNC4(req, &sg, out, size);

	err = FUNC6(FUNC5(req), &wait);

	FUNC2(req);
	return err;
}