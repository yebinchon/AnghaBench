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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,char const*,void*) ; 

__attribute__((used)) static void FUNC2(int family, void *addr, const char *optarg)
{
	int ret;

	ret = FUNC1(family, optarg, addr);
	if (ret == -1)
		FUNC0(1, errno, "inet_pton");
	if (ret == 0)
		FUNC0(1, 0, "inet_pton: bad string");
}