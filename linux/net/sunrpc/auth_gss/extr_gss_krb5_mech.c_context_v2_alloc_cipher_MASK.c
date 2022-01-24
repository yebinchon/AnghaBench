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
typedef  int /*<<< orphan*/  u8 ;
struct krb5_ctx {TYPE_1__* gk5e; } ;
struct crypto_sync_skcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  keylength; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_sync_skcipher*) ; 
 scalar_t__ FUNC3 (struct crypto_sync_skcipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static struct crypto_sync_skcipher *
FUNC5(struct krb5_ctx *ctx, const char *cname, u8 *key)
{
	struct crypto_sync_skcipher *cp;

	cp = FUNC1(cname, 0, 0);
	if (FUNC0(cp)) {
		FUNC4("gss_kerberos_mech: unable to initialize "
			"crypto algorithm %s\n", cname);
		return NULL;
	}
	if (FUNC3(cp, key, ctx->gk5e->keylength)) {
		FUNC4("gss_kerberos_mech: error setting key for "
			"crypto algorithm %s\n", cname);
		FUNC2(cp);
		return NULL;
	}
	return cp;
}