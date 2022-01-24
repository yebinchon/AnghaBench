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
struct kvm_cpuid2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_DEV_PATH ; 
 int /*<<< orphan*/  KVM_GET_SUPPORTED_CPUID ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 struct kvm_cpuid2* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct kvm_cpuid2*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct kvm_cpuid2 *FUNC6(void)
{
	static struct kvm_cpuid2 *cpuid;
	int ret;
	int kvm_fd;

	if (cpuid)
		return cpuid;

	cpuid = FUNC1();
	kvm_fd = FUNC5(KVM_DEV_PATH, O_RDONLY);
	if (kvm_fd < 0)
		FUNC3(KSFT_SKIP);

	ret = FUNC4(kvm_fd, KVM_GET_SUPPORTED_CPUID, cpuid);
	FUNC0(ret == 0, "KVM_GET_SUPPORTED_CPUID failed %d %d\n",
		    ret, errno);

	FUNC2(kvm_fd);
	return cpuid;
}