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
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cred_alloc_blank ; 
 int FUNC1 (struct cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cred*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct cred *cred, gfp_t gfp)
{
	int rc = FUNC1(cred, gfp);

	if (rc)
		return rc;

	rc = FUNC0(cred_alloc_blank, 0, cred, gfp);
	if (FUNC3(rc))
		FUNC2(cred);
	return rc;
}