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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int,unsigned int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(int family)
{
	unsigned int mark, prio;
	char name[16];
	int sd;

	sd = FUNC6(family, SOCK_DGRAM, 17);
	if (sd < 0) {
		FUNC4("socket");
		return 1;
	}

	if (FUNC1(sd, name, sizeof(name)) < 0)
		return 1;

	mark = FUNC3(sd);
	prio = FUNC2(sd);

	FUNC0(sd);

	FUNC5("sd %d: dev %s, mark %u, priority %u\n", sd, name, mark, prio);

	return 0;
}