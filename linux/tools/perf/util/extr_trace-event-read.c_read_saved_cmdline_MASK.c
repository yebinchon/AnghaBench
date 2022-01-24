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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct tep_handle*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned long long FUNC5 (struct tep_handle*) ; 

__attribute__((used)) static int FUNC6(struct tep_handle *pevent)
{
	unsigned long long size;
	char *buf;
	int ret;

	/* it can have 0 size */
	size = FUNC5(pevent);
	if (!size)
		return 0;

	buf = FUNC2(size + 1);
	if (buf == NULL) {
		FUNC4("memory allocation failure\n");
		return -1;
	}

	ret = FUNC0(buf, size);
	if (ret < 0) {
		FUNC4("error reading saved cmdlines\n");
		goto out;
	}

	FUNC3(pevent, buf, size);
	ret = 0;
out:
	FUNC1(buf);
	return ret;
}