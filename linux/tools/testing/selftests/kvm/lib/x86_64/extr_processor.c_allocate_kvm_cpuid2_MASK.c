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
struct kvm_cpuid_entry2 {int dummy; } ;
struct kvm_cpuid2 {int nent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct kvm_cpuid2* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct kvm_cpuid2 *FUNC3(void)
{
	struct kvm_cpuid2 *cpuid;
	int nent = 100;
	size_t size;

	size = sizeof(*cpuid);
	size += nent * sizeof(struct kvm_cpuid_entry2);
	cpuid = FUNC1(size);
	if (!cpuid) {
		FUNC2("malloc");
		FUNC0();
	}

	cpuid->nent = nent;

	return cpuid;
}