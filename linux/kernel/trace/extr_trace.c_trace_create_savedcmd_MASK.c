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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SAVED_CMDLINES_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * savedcmd ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	savedcmd = FUNC2(sizeof(*savedcmd), GFP_KERNEL);
	if (!savedcmd)
		return -ENOMEM;

	ret = FUNC0(SAVED_CMDLINES_DEFAULT, savedcmd);
	if (ret < 0) {
		FUNC1(savedcmd);
		savedcmd = NULL;
		return -ENOMEM;
	}

	return 0;
}