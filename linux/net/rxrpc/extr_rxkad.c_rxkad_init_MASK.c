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
struct skcipher_request {int dummy; } ;
struct crypto_sync_skcipher {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_sync_skcipher*) ; 
 int FUNC1 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* rxkad_ci ; 
 struct skcipher_request* rxkad_ci_req ; 
 struct skcipher_request* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct crypto_sync_skcipher *tfm;
	struct skcipher_request *req;

	/* pin the cipher we need so that the crypto layer doesn't invoke
	 * keventd to go get it */
	tfm = FUNC2("pcbc(fcrypt)", 0, 0);
	if (FUNC0(tfm))
		return FUNC1(tfm);

	req = FUNC4(&tfm->base, GFP_KERNEL);
	if (!req)
		goto nomem_tfm;

	rxkad_ci_req = req;
	rxkad_ci = tfm;
	return 0;

nomem_tfm:
	FUNC3(tfm);
	return -ENOMEM;
}