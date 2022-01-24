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
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  aa_g_path_max ; 
 int /*<<< orphan*/  apparmor_enabled ; 
 scalar_t__ apparmor_initialized ; 
 int FUNC0 (char const*,struct kernel_param const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *val, const struct kernel_param *kp)
{
	int error;

	if (!apparmor_enabled)
		return -EINVAL;
	/* file is ro but enforce 2nd line check */
	if (apparmor_initialized)
		return -EPERM;

	error = FUNC0(val, kp);
	FUNC1("AppArmor: buffer size set to %d bytes\n", aa_g_path_max);

	return error;
}