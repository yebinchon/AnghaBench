#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xdr_netobj {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_5__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct crypto_shash*) ; 
 struct crypto_shash* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_shash*) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC12(char *dname, const struct xdr_netobj *clname)
{
	struct xdr_netobj cksum;
	struct crypto_shash *tfm;
	int status;

	FUNC7("NFSD: nfs4_make_rec_clidname for %.*s\n",
			clname->len, clname->data);
	tfm = FUNC3("md5", 0, 0);
	if (FUNC0(tfm)) {
		status = FUNC1(tfm);
		goto out_no_tfm;
	}

	cksum.len = FUNC6(tfm);
	cksum.data = FUNC9(cksum.len, GFP_KERNEL);
	if (cksum.data == NULL) {
		status = -ENOMEM;
 		goto out;
	}

	{
		FUNC2(desc, tfm);

		desc->tfm = tfm;

		status = FUNC5(desc, clname->data, clname->len,
					     cksum.data);
		FUNC11(desc);
	}

	if (status)
		goto out;

	FUNC10(dname, cksum.data);

	status = 0;
out:
	FUNC8(cksum.data);
	FUNC4(tfm);
out_no_tfm:
	return status;
}