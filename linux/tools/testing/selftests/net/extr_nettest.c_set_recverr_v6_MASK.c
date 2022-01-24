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
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int ENOTSUP ; 
 int /*<<< orphan*/  IPV6_RECVERR ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(int sd)
{
	int one = 1;
	int rc;

	rc = FUNC1(sd, SOL_IPV6, IPV6_RECVERR, &one, sizeof(one));
	if (rc < 0 && rc != -ENOTSUP)
		FUNC0("setsockopt(IPV6_RECVERR)");

	return rc;
}