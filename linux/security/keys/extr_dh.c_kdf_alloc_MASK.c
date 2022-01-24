#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct kdf_sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (struct crypto_shash*) ; 
 scalar_t__ FUNC5 (struct crypto_shash*) ; 
 struct kdf_sdesc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(struct kdf_sdesc **sdesc_ret, char *hashname)
{
	struct crypto_shash *tfm;
	struct kdf_sdesc *sdesc;
	int size;
	int err;

	/* allocate synchronous hash */
	tfm = FUNC2(hashname, 0, 0);
	if (FUNC0(tfm)) {
		FUNC7("could not allocate digest TFM handle %s\n", hashname);
		return FUNC1(tfm);
	}

	err = -EINVAL;
	if (FUNC5(tfm) == 0)
		goto out_free_tfm;

	err = -ENOMEM;
	size = sizeof(struct shash_desc) + FUNC4(tfm);
	sdesc = FUNC6(size, GFP_KERNEL);
	if (!sdesc)
		goto out_free_tfm;
	sdesc->shash.tfm = tfm;

	*sdesc_ret = sdesc;

	return 0;

out_free_tfm:
	FUNC3(tfm);
	return err;
}