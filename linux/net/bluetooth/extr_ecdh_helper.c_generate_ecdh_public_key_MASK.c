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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct kpp_request {int dummy; } ;
struct ecdh_completion {int err; int /*<<< orphan*/  completion; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct kpp_request*) ; 
 int /*<<< orphan*/  ecdh_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct kpp_request* FUNC4 (struct crypto_kpp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kpp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct kpp_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecdh_completion*) ; 
 int /*<<< orphan*/  FUNC7 (struct kpp_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kpp_request*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct crypto_kpp *tfm, u8 public_key[64])
{
	struct kpp_request *req;
	u8 *tmp;
	struct ecdh_completion result;
	struct scatterlist dst;
	int err;

	tmp = FUNC3(64, GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	req = FUNC4(tfm, GFP_KERNEL);
	if (!req) {
		err = -ENOMEM;
		goto free_tmp;
	}

	FUNC1(&result.completion);
	FUNC9(&dst, tmp, 64);
	FUNC7(req, NULL, 0);
	FUNC8(req, &dst, 64);
	FUNC6(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				 ecdh_complete, &result);

	err = FUNC0(req);
	if (err == -EINPROGRESS) {
		FUNC11(&result.completion);
		err = result.err;
	}
	if (err < 0)
		goto free_all;

	/* The public key is handed back in little endian as expected by
	 * the Security Manager Protocol.
	 */
	FUNC10((u64 *)tmp, (u64 *)public_key, 4); /* x */
	FUNC10((u64 *)&tmp[32], (u64 *)&public_key[32], 4); /* y */

free_all:
	FUNC5(req);
free_tmp:
	FUNC2(tmp);
	return err;
}