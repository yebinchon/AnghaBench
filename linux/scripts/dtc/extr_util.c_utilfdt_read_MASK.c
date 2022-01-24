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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*,char**,size_t*) ; 

char *FUNC3(const char *filename, size_t *len)
{
	char *buff;
	int ret = FUNC2(filename, &buff, len);

	if (ret) {
		FUNC0(stderr, "Couldn't open blob from '%s': %s\n", filename,
			FUNC1(ret));
		return NULL;
	}
	/* Successful read */
	return buff;
}