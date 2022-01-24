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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int*) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(int cpu, void *arg1, void *arg2, void *arg3,
				   void *arg4)
{
	int clos, ret;

	ret = FUNC1(cpu, &clos);
	if (ret)
		FUNC2("isst_clos_get_assoc_status");
	else
		FUNC0(cpu, outf, clos);
}