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
 scalar_t__ FUNC0 (char*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int*) ; 

__attribute__((used)) static int FUNC3(char *path, int *max)
{
	size_t num;
	char *buf;
	int err = 0;

	if (FUNC0(path, &buf, &num))
		return -1;

	buf[num] = '\0';

	/* start on the right, to find highest node num */
	while (--num) {
		if ((buf[num] == ',') || (buf[num] == '-')) {
			num++;
			break;
		}
	}
	if (FUNC2(&buf[num], "%d", max) < 1) {
		err = -1;
		goto out;
	}

	/* convert from 0-based to 1-based */
	(*max)++;

out:
	FUNC1(buf);
	return err;
}