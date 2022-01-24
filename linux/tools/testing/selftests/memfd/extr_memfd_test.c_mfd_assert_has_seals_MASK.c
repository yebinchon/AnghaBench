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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(int fd, unsigned int seals)
{
	unsigned int s;

	s = FUNC1(fd);
	if (s != seals) {
		FUNC2("%u != %u = GET_SEALS(%d)\n", seals, s, fd);
		FUNC0();
	}
}