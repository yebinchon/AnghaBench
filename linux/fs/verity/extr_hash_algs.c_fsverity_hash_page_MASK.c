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
struct page {int dummy; } ;
struct merkle_tree_params {scalar_t__ block_size; scalar_t__ hashstate; } ;
struct inode {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (struct ahash_request*) ; 
 int FUNC5 (struct ahash_request*) ; 
 int FUNC6 (struct ahash_request*,scalar_t__) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

int FUNC11(const struct merkle_tree_params *params,
		       const struct inode *inode,
		       struct ahash_request *req, struct page *page, u8 *out)
{
	struct scatterlist sg;
	FUNC0(wait);
	int err;

	if (FUNC1(params->block_size != PAGE_SIZE))
		return -EINVAL;

	FUNC9(&sg, 1);
	FUNC10(&sg, page, PAGE_SIZE, 0);
	FUNC2(req, CRYPTO_TFM_REQ_MAY_SLEEP |
					CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &wait);
	FUNC3(req, &sg, out, PAGE_SIZE);

	if (params->hashstate) {
		err = FUNC6(req, params->hashstate);
		if (err) {
			FUNC8(inode,
				     "Error %d importing hash state", err);
			return err;
		}
		err = FUNC5(req);
	} else {
		err = FUNC4(req);
	}

	err = FUNC7(err, &wait);
	if (err)
		FUNC8(inode, "Error %d computing page hash", err);
	return err;
}