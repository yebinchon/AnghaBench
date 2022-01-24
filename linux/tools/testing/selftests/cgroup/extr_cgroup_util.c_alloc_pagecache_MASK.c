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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int,struct stat*) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

int FUNC3(int fd, size_t size)
{
	char buf[PAGE_SIZE];
	struct stat st;
	int i;

	if (FUNC0(fd, &st))
		goto cleanup;

	size += st.st_size;

	if (FUNC1(fd, size))
		goto cleanup;

	for (i = 0; i < size; i += sizeof(buf))
		FUNC2(fd, buf, sizeof(buf));

	return 0;

cleanup:
	return -1;
}