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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netlabel_mgmt_protocount ; 

int FUNC1(void)
{
	/* At some point we probably want to expose this mechanism to the user
	 * as well so that admins can toggle NetLabel regardless of the
	 * configuration */
	return (FUNC0(&netlabel_mgmt_protocount) > 0);
}