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
struct kvm_cpuid_entry2 {int ecx; } ;

/* Variables and functions */
 int CPUID_VMX ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct kvm_cpuid_entry2* FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(void)
{
	struct kvm_cpuid_entry2 *entry = FUNC2(1);

	if (!(entry->ecx & CPUID_VMX)) {
		FUNC1(stderr, "nested VMX not enabled, skipping test\n");
		FUNC0(KSFT_SKIP);
	}
}