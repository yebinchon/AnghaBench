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
struct selinux_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct selinux_fs_info*) ; 
 int FUNC2 (struct selinux_fs_info*) ; 
 int FUNC3 (struct selinux_fs_info*) ; 

__attribute__((used)) static int FUNC4(struct selinux_fs_info *fsi)
{
	int ret;

	ret = FUNC1(fsi);
	if (ret) {
		FUNC0("SELinux: failed to load policy booleans\n");
		return ret;
	}

	ret = FUNC2(fsi);
	if (ret) {
		FUNC0("SELinux: failed to load policy classes\n");
		return ret;
	}

	ret = FUNC3(fsi);
	if (ret) {
		FUNC0("SELinux: failed to load policy capabilities\n");
		return ret;
	}

	return 0;
}