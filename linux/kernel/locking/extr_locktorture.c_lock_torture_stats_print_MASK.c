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
struct TYPE_4__ {int nrealwriters_stress; int nrealreaders_stress; int /*<<< orphan*/  lrsa; TYPE_1__* cur_ops; int /*<<< orphan*/  lwsa; } ;
struct TYPE_3__ {scalar_t__ readlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ cxt ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int size = cxt.nrealwriters_stress * 200 + 8192;
	char *buf;

	if (cxt.cur_ops->readlock)
		size += cxt.nrealreaders_stress * 200 + 8192;

	buf = FUNC2(size, GFP_KERNEL);
	if (!buf) {
		FUNC4("lock_torture_stats_print: Out of memory, need: %d",
		       size);
		return;
	}

	FUNC0(buf, cxt.lwsa, true);
	FUNC3("%s", buf);
	FUNC1(buf);

	if (cxt.cur_ops->readlock) {
		buf = FUNC2(size, GFP_KERNEL);
		if (!buf) {
			FUNC4("lock_torture_stats_print: Out of memory, need: %d",
			       size);
			return;
		}

		FUNC0(buf, cxt.lrsa, false);
		FUNC3("%s", buf);
		FUNC1(buf);
	}
}