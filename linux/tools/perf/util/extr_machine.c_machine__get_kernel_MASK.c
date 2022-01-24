#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct machine {char* mmap_name; } ;
struct dso {int /*<<< orphan*/  has_build_id; } ;
struct TYPE_2__ {char* vmlinux_name; char* default_guest_vmlinux_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_TYPE_GUEST_KERNEL ; 
 int /*<<< orphan*/  DSO_TYPE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dso*,struct machine*) ; 
 struct dso* FUNC1 (struct machine*,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct machine*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static struct dso *FUNC3(struct machine *machine)
{
	const char *vmlinux_name = machine->mmap_name;
	struct dso *kernel;

	if (FUNC2(machine)) {
		if (symbol_conf.vmlinux_name)
			vmlinux_name = symbol_conf.vmlinux_name;

		kernel = FUNC1(machine, vmlinux_name,
						 "[kernel]", DSO_TYPE_KERNEL);
	} else {
		if (symbol_conf.default_guest_vmlinux_name)
			vmlinux_name = symbol_conf.default_guest_vmlinux_name;

		kernel = FUNC1(machine, vmlinux_name,
						 "[guest.kernel]",
						 DSO_TYPE_GUEST_KERNEL);
	}

	if (kernel != NULL && (!kernel->has_build_id))
		FUNC0(kernel, machine);

	return kernel;
}