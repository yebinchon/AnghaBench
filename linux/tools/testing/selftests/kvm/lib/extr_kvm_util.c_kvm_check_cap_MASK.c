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
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CHECK_EXTENSION ; 
 int /*<<< orphan*/  KVM_DEV_PATH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(long cap)
{
	int ret;
	int kvm_fd;

	kvm_fd = FUNC4(KVM_DEV_PATH, O_RDONLY);
	if (kvm_fd < 0)
		FUNC2(KSFT_SKIP);

	ret = FUNC3(kvm_fd, KVM_CHECK_EXTENSION, cap);
	FUNC0(ret != -1, "KVM_CHECK_EXTENSION IOCTL failed,\n"
		"  rc: %i errno: %i", ret, errno);

	FUNC1(kvm_fd);

	return ret;
}