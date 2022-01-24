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
struct data__file {int dummy; } ;
struct TYPE_2__ {scalar_t__ time_str; } ;

/* Variables and functions */
 int FUNC0 (struct data__file*,char**) ; 
 int FUNC1 (struct data__file*) ; 
 TYPE_1__ pdiff ; 

__attribute__((used)) static int FUNC2(struct data__file *d, char *abstime_ostr,
			   char **pabstime_tmp)
{
	int ret = 0;

	if (abstime_ostr)
		ret = FUNC0(d, pabstime_tmp);
	else if (pdiff.time_str)
		ret = FUNC1(d);

	return ret;
}