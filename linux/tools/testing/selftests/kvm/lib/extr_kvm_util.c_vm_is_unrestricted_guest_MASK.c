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
struct kvm_vm {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* KVM_DEV_PATH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 

bool FUNC4(struct kvm_vm *vm)
{
	char val = 'N';
	size_t count;
	FILE *f;

	if (vm == NULL) {
		/* Ensure that the KVM vendor-specific module is loaded. */
		f = FUNC2(KVM_DEV_PATH, "r");
		FUNC0(f != NULL, "Error in opening KVM dev file: %d",
			    errno);
		FUNC1(f);
	}

	f = FUNC2("/sys/module/kvm_intel/parameters/unrestricted_guest", "r");
	if (f) {
		count = FUNC3(&val, sizeof(char), 1, f);
		FUNC0(count == 1, "Unable to read from param file.");
		FUNC1(f);
	}

	return val == 'Y';
}