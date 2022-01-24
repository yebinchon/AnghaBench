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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC1 (int,int,int,int*,int) ; 

__attribute__((used)) static void FUNC2(int fd, int level, int optname, int val)
{
	if (FUNC1(fd, level, optname, &val, sizeof(val)))
		FUNC0(1, errno, "setsockopt %d.%d: %d", level, optname, val);
}