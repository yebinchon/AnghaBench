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
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int /*<<< orphan*/  F_GET_SEALS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(int fd, unsigned int seals)
{
	int r;
	unsigned int s;

	r = FUNC1(fd, F_GET_SEALS);
	if (r < 0)
		s = 0;
	else
		s = (unsigned int)r;

	r = FUNC1(fd, F_ADD_SEALS, seals);
	if (r >= 0) {
		FUNC2("ADD_SEALS(%d, %u -> %u) didn't fail as expected\n",
				fd, s, seals);
		FUNC0();
	}
}