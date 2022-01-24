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
struct module_signature {int dummy; } ;
struct modsig {int /*<<< orphan*/  hash_algo; int /*<<< orphan*/  digest_size; int /*<<< orphan*/  digest; int /*<<< orphan*/  pkcs7_msg; scalar_t__ raw_pkcs7_len; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_SIG_STRING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct modsig *modsig, const void *buf, loff_t size)
{
	int rc;

	/*
	 * Provide the file contents (minus the appended sig) so that the PKCS7
	 * code can calculate the file hash.
	 */
	size -= modsig->raw_pkcs7_len + FUNC2(MODULE_SIG_STRING) +
		sizeof(struct module_signature);
	rc = FUNC1(modsig->pkcs7_msg, buf, size);
	if (rc)
		return;

	/* Ask the PKCS7 code to calculate the file hash. */
	rc = FUNC0(modsig->pkcs7_msg, &modsig->digest,
			      &modsig->digest_size, &modsig->hash_algo);
}