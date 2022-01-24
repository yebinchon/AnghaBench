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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static X509 *FUNC10(const char *x509_name)
{
	unsigned char buf[2];
	X509 *x509;
	BIO *b;
	int n;

	b = FUNC1(x509_name, "rb");
	FUNC5(!b, "%s", x509_name);

	/* Look at the first two bytes of the file to determine the encoding */
	n = FUNC2(b, buf, 2);
	if (n != 2) {
		if (FUNC4(b)) {
			FUNC9(stderr, "%s: Read wanted retry\n", x509_name);
			FUNC8(1);
		}
		if (n >= 0) {
			FUNC9(stderr, "%s: Short read\n", x509_name);
			FUNC8(1);
		}
		FUNC5(1, "%s", x509_name);
	}

	FUNC5(FUNC3(b) != 0, "%s", x509_name);

	if (buf[0] == 0x30 && buf[1] >= 0x81 && buf[1] <= 0x84)
		/* Assume raw DER encoded X.509 */
		x509 = FUNC7(b, NULL);
	else
		/* Assume PEM encoded X.509 */
		x509 = FUNC6(b, NULL, NULL, NULL);

	FUNC0(b);
	FUNC5(!x509, "%s", x509_name);

	return x509;
}