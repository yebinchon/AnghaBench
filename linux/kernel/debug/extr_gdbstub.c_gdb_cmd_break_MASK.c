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
struct kgdb_state {int dummy; } ;
struct TYPE_2__ {int (* set_hw_breakpoint ) (unsigned long,int,char) ;int flags; int (* remove_hw_breakpoint ) (unsigned long,int,char) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int KGDB_HW_BREAKPOINT ; 
 TYPE_1__ arch_kgdb_ops ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,unsigned long*) ; 
 char* remcom_in_buffer ; 
 int /*<<< orphan*/  remcom_out_buffer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (unsigned long,int,char) ; 
 int FUNC6 (unsigned long,int,char) ; 

__attribute__((used)) static void FUNC7(struct kgdb_state *ks)
{
	/*
	 * Since GDB-5.3, it's been drafted that '0' is a software
	 * breakpoint, '1' is a hardware breakpoint, so let's do that.
	 */
	char *bpt_type = &remcom_in_buffer[1];
	char *ptr = &remcom_in_buffer[2];
	unsigned long addr;
	unsigned long length;
	int error = 0;

	if (arch_kgdb_ops.set_hw_breakpoint && *bpt_type >= '1') {
		/* Unsupported */
		if (*bpt_type > '4')
			return;
	} else {
		if (*bpt_type != '0' && *bpt_type != '1')
			/* Unsupported. */
			return;
	}

	/*
	 * Test if this is a hardware breakpoint, and
	 * if we support it:
	 */
	if (*bpt_type == '1' && !(arch_kgdb_ops.flags & KGDB_HW_BREAKPOINT))
		/* Unsupported. */
		return;

	if (*(ptr++) != ',') {
		FUNC2(remcom_out_buffer, -EINVAL);
		return;
	}
	if (!FUNC3(&ptr, &addr)) {
		FUNC2(remcom_out_buffer, -EINVAL);
		return;
	}
	if (*(ptr++) != ',' ||
		!FUNC3(&ptr, &length)) {
		FUNC2(remcom_out_buffer, -EINVAL);
		return;
	}

	if (remcom_in_buffer[0] == 'Z' && *bpt_type == '0')
		error = FUNC1(addr);
	else if (remcom_in_buffer[0] == 'z' && *bpt_type == '0')
		error = FUNC0(addr);
	else if (remcom_in_buffer[0] == 'Z')
		error = arch_kgdb_ops.set_hw_breakpoint(addr,
			(int)length, *bpt_type - '0');
	else if (remcom_in_buffer[0] == 'z')
		error = arch_kgdb_ops.remove_hw_breakpoint(addr,
			(int) length, *bpt_type - '0');

	if (error == 0)
		FUNC4(remcom_out_buffer, "OK");
	else
		FUNC2(remcom_out_buffer, error);
}