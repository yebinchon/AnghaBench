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
struct isst_pkg_ctdp {int /*<<< orphan*/  current_level; } ;

/* Variables and functions */
 int FUNC0 (int,struct isst_pkg_ctdp*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int,int,int,unsigned long long*) ; 

int FUNC3(int cpu, unsigned long long trl)
{
	unsigned long long msr_trl;
	int ret;

	if (trl) {
		msr_trl = trl;
	} else {
		struct isst_pkg_ctdp pkg_dev;
		int trl[8];
		int i;

		ret = FUNC0(cpu, &pkg_dev);
		if (ret)
			return ret;

		ret = FUNC1(cpu, pkg_dev.current_level, 0, trl);
		if (ret)
			return ret;

		msr_trl = 0;
		for (i = 0; i < 8; ++i) {
			unsigned long long _trl = trl[i];

			msr_trl |= (_trl << (i * 8));
		}
	}
	ret = FUNC2(cpu, 0x1AD, 1, &msr_trl);
	if (ret)
		return ret;

	return 0;
}