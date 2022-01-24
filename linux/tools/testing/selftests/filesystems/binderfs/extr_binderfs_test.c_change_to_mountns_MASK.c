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
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	int ret;

	ret = FUNC3(CLONE_NEWNS);
	if (ret < 0)
		FUNC0("%s - Failed to unshare mount namespace\n",
				   FUNC2(errno));

	ret = FUNC1(NULL, "/", NULL, MS_REC | MS_PRIVATE, 0);
	if (ret < 0)
		FUNC0("%s - Failed to mount / as private\n",
				   FUNC2(errno));
}