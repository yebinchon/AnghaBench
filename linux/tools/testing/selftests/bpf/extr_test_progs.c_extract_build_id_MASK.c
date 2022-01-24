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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

int FUNC4(char *build_id, size_t size)
{
	FILE *fp;
	char *line = NULL;
	size_t len = 0;

	fp = FUNC3("readelf -n ./urandom_read | grep 'Build ID'", "r");
	if (fp == NULL)
		return -1;

	if (FUNC1(&line, &len, fp) == -1)
		goto err;
	FUNC0(fp);

	if (len > size)
		len = size;
	FUNC2(build_id, line, len);
	build_id[len] = '\0';
	return 0;
err:
	FUNC0(fp);
	return -1;
}