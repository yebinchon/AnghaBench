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
typedef  int /*<<< orphan*/  symfs_vmlinux ;
struct symsrc {int dummy; } ;
struct map {int dummy; } ;
struct dso {scalar_t__ kernel; void* binary_type; } ;
typedef  enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;

/* Variables and functions */
 void* DSO_BINARY_TYPE__GUEST_VMLINUX ; 
 void* DSO_BINARY_TYPE__VMLINUX ; 
 scalar_t__ DSO_TYPE_GUEST_KERNEL ; 
 int PATH_MAX ; 
 int FUNC0 (struct dso*,struct map*,struct symsrc*,struct symsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct symsrc*) ; 
 scalar_t__ FUNC7 (struct symsrc*,struct dso*,char*,int) ; 

int FUNC8(struct dso *dso, struct map *map,
		      const char *vmlinux, bool vmlinux_allocated)
{
	int err = -1;
	struct symsrc ss;
	char symfs_vmlinux[PATH_MAX];
	enum dso_binary_type symtab_type;

	if (vmlinux[0] == '/')
		FUNC4(symfs_vmlinux, sizeof(symfs_vmlinux), "%s", vmlinux);
	else
		FUNC5(symfs_vmlinux, vmlinux);

	if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
		symtab_type = DSO_BINARY_TYPE__GUEST_VMLINUX;
	else
		symtab_type = DSO_BINARY_TYPE__VMLINUX;

	if (FUNC7(&ss, dso, symfs_vmlinux, symtab_type))
		return -1;

	err = FUNC0(dso, map, &ss, &ss, 0);
	FUNC6(&ss);

	if (err > 0) {
		if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
			dso->binary_type = DSO_BINARY_TYPE__GUEST_VMLINUX;
		else
			dso->binary_type = DSO_BINARY_TYPE__VMLINUX;
		FUNC2(dso, vmlinux, vmlinux_allocated);
		FUNC1(dso);
		FUNC3("Using %s for symbols\n", symfs_vmlinux);
	}

	return err;
}