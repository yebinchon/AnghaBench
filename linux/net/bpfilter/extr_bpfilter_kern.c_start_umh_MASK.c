#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {int stop; TYPE_1__ info; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ bpfilter_ops ; 
 int /*<<< orphan*/  bpfilter_umh_end ; 
 int /*<<< orphan*/  bpfilter_umh_start ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	int err;

	/* fork usermode process */
	err = FUNC1(&bpfilter_umh_start,
				 &bpfilter_umh_end - &bpfilter_umh_start,
				 &bpfilter_ops.info);
	if (err)
		return err;
	bpfilter_ops.stop = false;
	FUNC2("Loaded bpfilter_umh pid %d\n", bpfilter_ops.info.pid);

	/* health check that usermode process started correctly */
	if (FUNC0(NULL, 0, NULL, 0, 0) != 0) {
		FUNC3();
		return -EFAULT;
	}

	return 0;
}