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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char**,size_t*) ; 

int FUNC2(const char *entry, bool *value)
{
	char *buf;
	size_t size;
	int ret;

	ret = FUNC1(entry, &buf, &size);
	if (ret < 0)
		return ret;

	switch (buf[0]) {
	case '1':
	case 'y':
	case 'Y':
		*value = true;
		break;
	case '0':
	case 'n':
	case 'N':
		*value = false;
		break;
	default:
		ret = -1;
	}

	FUNC0(buf);

	return ret;
}