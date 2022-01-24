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
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC2(int sd)
{
	unsigned int one = 1;
	int rc = 0;

	if (FUNC1(sd, SOL_SOCKET, SO_REUSEPORT, &one, sizeof(one)) != 0) {
		FUNC0("setsockopt(SO_REUSEPORT)");
		rc = -1;
	}

	return rc;
}