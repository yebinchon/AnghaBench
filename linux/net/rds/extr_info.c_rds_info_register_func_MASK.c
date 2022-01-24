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
typedef  int rds_info_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RDS_INFO_FIRST ; 
 int RDS_INFO_LAST ; 
 int* rds_info_funcs ; 
 int /*<<< orphan*/  rds_info_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(int optname, rds_info_func func)
{
	int offset = optname - RDS_INFO_FIRST;

	FUNC0(optname < RDS_INFO_FIRST || optname > RDS_INFO_LAST);

	FUNC1(&rds_info_lock);
	FUNC0(rds_info_funcs[offset]);
	rds_info_funcs[offset] = func;
	FUNC2(&rds_info_lock);
}