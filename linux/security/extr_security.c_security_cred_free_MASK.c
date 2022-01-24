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
struct cred {int /*<<< orphan*/ * security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cred*) ; 
 int /*<<< orphan*/  cred_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct cred *cred)
{
	/*
	 * There is a failure case in prepare_creds() that
	 * may result in a call here with ->security being NULL.
	 */
	if (FUNC2(cred->security == NULL))
		return;

	FUNC0(cred_free, cred);

	FUNC1(cred->security);
	cred->security = NULL;
}