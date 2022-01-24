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
struct ceph_crypto_key {int type; int /*<<< orphan*/  len; int /*<<< orphan*/ * key; int /*<<< orphan*/ * tfm; } ;

/* Variables and functions */
#define  CEPH_CRYPTO_AES 129 
#define  CEPH_CRYPTO_NONE 128 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_crypto_key*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct ceph_crypto_key *key, void *buf)
{
	unsigned int noio_flag;
	int ret;

	key->key = NULL;
	key->tfm = NULL;

	switch (key->type) {
	case CEPH_CRYPTO_NONE:
		return 0; /* nothing to do */
	case CEPH_CRYPTO_AES:
		break;
	default:
		return -ENOTSUPP;
	}

	if (!key->len)
		return -EINVAL;

	key->key = FUNC5(buf, key->len, GFP_NOIO);
	if (!key->key) {
		ret = -ENOMEM;
		goto fail;
	}

	/* crypto_alloc_sync_skcipher() allocates with GFP_KERNEL */
	noio_flag = FUNC7();
	key->tfm = FUNC3("cbc(aes)", 0, 0);
	FUNC6(noio_flag);
	if (FUNC0(key->tfm)) {
		ret = FUNC1(key->tfm);
		key->tfm = NULL;
		goto fail;
	}

	ret = FUNC4(key->tfm, key->key, key->len);
	if (ret)
		goto fail;

	return 0;

fail:
	FUNC2(key);
	return ret;
}