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
struct notifier_block {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct crypto_alg {int /*<<< orphan*/  cra_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_T10DIF_STRING ; 
 unsigned long CRYPTO_MSG_ALG_LOADED ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  crc_t10dif_mutex ; 
 int /*<<< orphan*/  crct10dif_fallback ; 
 int /*<<< orphan*/  crct10dif_tfm ; 
 struct crypto_shash* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct crypto_shash*) ; 
 struct crypto_shash* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct notifier_block *self, unsigned long val, void *data)
{
	struct crypto_alg *alg = data;
	struct crypto_shash *new, *old;

	if (val != CRYPTO_MSG_ALG_LOADED ||
	    FUNC8(&crct10dif_fallback) ||
	    FUNC10(alg->cra_name, CRC_T10DIF_STRING, FUNC9(CRC_T10DIF_STRING)))
		return 0;

	FUNC4(&crc_t10dif_mutex);
	old = FUNC7(crct10dif_tfm,
					FUNC3(&crc_t10dif_mutex));
	if (!old) {
		FUNC5(&crc_t10dif_mutex);
		return 0;
	}
	new = FUNC1("crct10dif", 0, 0);
	if (FUNC0(new)) {
		FUNC5(&crc_t10dif_mutex);
		return 0;
	}
	FUNC6(crct10dif_tfm, new);
	FUNC5(&crc_t10dif_mutex);

	FUNC11();
	FUNC2(old);
	return 0;
}