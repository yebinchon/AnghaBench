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
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct kpp_request* FUNC3 (struct crypto_kpp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kpp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct kpp_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecdh_completion*) ; 
 int /*<<< orphan*/  FUNC6 (struct kpp_request*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kpp_request*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct crypto_kpp *tfm, const u8 public_key[64],
			u8 secret[32])
{
	struct kpp_request *req;
	u8 *tmp;
	struct ecdh_completion result;
	struct scatterlist src, dst;
	int err;

	tmp = FUNC2(64, GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	req = FUNC3(tfm, GFP_KERNEL);
	if (!req) {
		err = -ENOMEM;
		goto free_tmp;
	}

	FUNC1(&result.completion);

	FUNC12((u64 *)public_key, (u64 *)tmp, 4); /* x */
	FUNC12((u64 *)&public_key[32], (u64 *)&tmp[32], 4); /* y */

	FUNC11(&src, tmp, 64);
	FUNC11(&dst, secret, 32);
	FUNC6(req, &src, 64);
	FUNC7(req, &dst, 32);
	FUNC5(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				 ecdh_complete, &result);
	err = FUNC0(req);
	if (err == -EINPROGRESS) {
		FUNC13(&result.completion);
		err = result.err;
	}
	if (err < 0) {
		FUNC10("alg: ecdh: compute shared secret failed. err %d\n",
		       err);
		goto free_all;
	}

	FUNC12((u64 *)secret, (u64 *)tmp, 4);
	FUNC9(secret, tmp, 32);

free_all:
	FUNC4(req);
free_tmp:
	FUNC8(tmp);
	return err;
}