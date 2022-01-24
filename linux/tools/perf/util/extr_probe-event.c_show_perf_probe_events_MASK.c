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
struct strfilter {int dummy; } ;
struct TYPE_2__ {scalar_t__ cache; } ;

/* Variables and functions */
 int FUNC0 (int,int,struct strfilter*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct strfilter*) ; 
 TYPE_1__ probe_conf ; 
 int FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct strfilter *filter)
{
	int kp_fd, up_fd, ret;

	FUNC6();

	if (probe_conf.cache)
		return FUNC4(filter);

	ret = FUNC3(false);
	if (ret < 0)
		return ret;

	ret = FUNC5(&kp_fd, &up_fd, 0);
	if (ret < 0)
		return ret;

	if (kp_fd >= 0)
		ret = FUNC0(kp_fd, true, filter);
	if (up_fd >= 0 && ret >= 0)
		ret = FUNC0(up_fd, false, filter);
	if (kp_fd > 0)
		FUNC1(kp_fd);
	if (up_fd > 0)
		FUNC1(up_fd);
	FUNC2();

	return ret;
}