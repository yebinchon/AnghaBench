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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct ib_umad_rw_args {int /*<<< orphan*/  mgmt_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_count ; 

int FUNC3(struct ib_umad_rw_args *ctx)
{
	u64 zero = 0, *val;
	u8 class = ctx->mgmt_class;

	FUNC2("ib_umad read send : class 0x%x\n", class);

	val = FUNC0(&read_count, &class);
	if (!val) {
		FUNC1(&read_count, &class, &zero, BPF_NOEXIST);
		val = FUNC0(&read_count, &class);
		if (!val)
			return 0;
	}

	(*val) += 1;

	return 0;
}