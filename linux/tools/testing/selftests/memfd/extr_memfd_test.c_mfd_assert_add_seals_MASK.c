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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(int fd, unsigned int seals)
{
	int r;
	unsigned int s;

	s = FUNC2(fd);
	r = FUNC1(fd, F_ADD_SEALS, seals);
	if (r < 0) {
		FUNC3("ADD_SEALS(%d, %u -> %u) failed: %m\n", fd, s, seals);
		FUNC0();
	}
}