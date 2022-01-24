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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cert_dst ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ kbuild_verbose ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ wb ; 

__attribute__((used)) static void FUNC6(X509 *x509)
{
	char buf[200];

	if (!wb) {
		wb = FUNC0(cert_dst, "wb");
		FUNC1(!wb, "%s", cert_dst);
	}
	FUNC2(FUNC3(x509), buf, sizeof(buf));
	FUNC1(!FUNC5(wb, x509), "%s", cert_dst);
	if (kbuild_verbose)
		FUNC4(stderr, "Extracted cert: %s\n", buf);
}