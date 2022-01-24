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
 int /*<<< orphan*/  SHUFFLE_ENABLE ; 
 int /*<<< orphan*/  shuffle_state ; 
 int FUNC0 (char*,char*,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(char *buffer, const struct kernel_param *kp)
{
	return FUNC0(buffer, "%c\n", FUNC1(SHUFFLE_ENABLE, &shuffle_state)
			? 'Y' : 'N');
}