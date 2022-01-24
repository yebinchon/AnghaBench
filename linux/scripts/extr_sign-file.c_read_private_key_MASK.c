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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ key_pass ; 
 int /*<<< orphan*/  pem_pw_cb ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int) ; 

__attribute__((used)) static EVP_PKEY *FUNC11(const char *private_key_name)
{
	EVP_PKEY *private_key;

	if (!FUNC10(private_key_name, "pkcs11:", 7)) {
		ENGINE *e;

		FUNC5();
		FUNC9();
		e = FUNC2("pkcs11");
		FUNC7(!e, "Load PKCS#11 ENGINE");
		if (FUNC4(e))
			FUNC9();
		else
			FUNC7(1, "ENGINE_init");
		if (key_pass)
			FUNC7(!FUNC3(e, "PIN", key_pass, 0),
			    "Set PKCS#11 PIN");
		private_key = FUNC6(e, private_key_name,
						      NULL, NULL);
		FUNC7(!private_key, "%s", private_key_name);
	} else {
		BIO *b;

		b = FUNC1(private_key_name, "rb");
		FUNC7(!b, "%s", private_key_name);
		private_key = FUNC8(b, NULL, pem_pw_cb,
						      NULL);
		FUNC7(!private_key, "%s", private_key_name);
		FUNC0(b);
	}

	return private_key;
}