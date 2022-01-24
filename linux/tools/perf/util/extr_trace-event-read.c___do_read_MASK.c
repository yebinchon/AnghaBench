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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,void*,int) ; 
 scalar_t__ repipe ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC3(int fd, void *buf, int size)
{
	int rsize = size;

	while (size) {
		int ret = FUNC1(fd, buf, size);

		if (ret <= 0)
			return -1;

		if (repipe) {
			int retw = FUNC2(STDOUT_FILENO, buf, ret);

			if (retw <= 0 || retw != ret) {
				FUNC0("repiping input file");
				return -1;
			}
		}

		size -= ret;
		buf += ret;
	}

	return rsize;
}