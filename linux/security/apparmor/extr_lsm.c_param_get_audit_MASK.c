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
 size_t aa_g_audit ; 
 int /*<<< orphan*/  apparmor_enabled ; 
 scalar_t__ apparmor_initialized ; 
 char** audit_mode_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC2(char *buffer, const struct kernel_param *kp)
{
	if (!apparmor_enabled)
		return -EINVAL;
	if (apparmor_initialized && !FUNC0(NULL))
		return -EPERM;
	return FUNC1(buffer, "%s", audit_mode_names[aa_g_audit]);
}