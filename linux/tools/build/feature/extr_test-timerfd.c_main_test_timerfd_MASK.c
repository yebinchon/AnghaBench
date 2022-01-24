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
struct itimerspec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  TFD_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	struct itimerspec new_value;

	int fd = FUNC0(CLOCK_MONOTONIC, TFD_NONBLOCK);
	if (fd < 0)
		return 1;

	if (FUNC1(fd, 0, &new_value, NULL) != 0)
		return 1;

	return 0;
}