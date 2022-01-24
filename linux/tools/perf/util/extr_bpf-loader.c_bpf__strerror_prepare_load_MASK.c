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
 int FUNC0 (int,char*,size_t) ; 
 size_t FUNC1 (char*,size_t,char*,char const*,char*) ; 

int FUNC2(const char *filename, bool source,
			       int err, char *buf, size_t size)
{
	size_t n;
	int ret;

	n = FUNC1(buf, size, "Failed to load %s%s: ",
			 filename, source ? " from source" : "");
	if (n >= size) {
		buf[size - 1] = '\0';
		return 0;
	}
	buf += n;
	size -= n;

	ret = FUNC0(err, buf, size);
	buf[size - 1] = '\0';
	return ret;
}