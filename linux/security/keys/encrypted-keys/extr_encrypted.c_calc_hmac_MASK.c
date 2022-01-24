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
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct crypto_shash*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_shash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (struct crypto_shash*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  hmac_alg ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(u8 *digest, const u8 *key, unsigned int keylen,
		     const u8 *buf, unsigned int buflen)
{
	struct crypto_shash *tfm;
	int err;

	tfm = FUNC3(hmac_alg, 0, 0);
	if (FUNC0(tfm)) {
		FUNC6("encrypted_key: can't alloc %s transform: %ld\n",
		       hmac_alg, FUNC1(tfm));
		return FUNC1(tfm);
	}

	err = FUNC5(tfm, key, keylen);
	if (!err)
		err = FUNC2(tfm, digest, buf, buflen);
	FUNC4(tfm);
	return err;
}