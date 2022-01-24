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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  crct10dif_fallback ; 
 int /*<<< orphan*/  crct10dif_tfm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(char *buffer, const struct kernel_param *kp)
{
	if (FUNC3(&crct10dif_fallback))
		return FUNC2(buffer, "fallback\n");

	return FUNC2(buffer, "%s\n",
		FUNC1(FUNC0(crct10dif_tfm)));
}