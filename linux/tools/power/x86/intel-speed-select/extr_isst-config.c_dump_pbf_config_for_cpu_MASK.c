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
struct isst_pbf_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,struct isst_pbf_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct isst_pbf_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct isst_pbf_info*) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  tdp_level ; 

__attribute__((used)) static void FUNC4(int cpu, void *arg1, void *arg2, void *arg3,
				    void *arg4)
{
	struct isst_pbf_info pbf_info;
	int ret;

	ret = FUNC0(cpu, tdp_level, &pbf_info);
	if (ret) {
		FUNC3("isst_get_pbf_info");
	} else {
		FUNC2(cpu, outf, tdp_level, &pbf_info);
		FUNC1(&pbf_info);
	}
}