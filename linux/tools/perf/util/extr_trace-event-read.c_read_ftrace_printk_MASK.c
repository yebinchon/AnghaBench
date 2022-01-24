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
 scalar_t__ FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tep_handle*,char*,unsigned int) ; 
 unsigned int FUNC4 (struct tep_handle*) ; 

__attribute__((used)) static int FUNC5(struct tep_handle *pevent)
{
	unsigned int size;
	char *buf;

	/* it can have 0 size */
	size = FUNC4(pevent);
	if (!size)
		return 0;

	buf = FUNC2(size + 1);
	if (buf == NULL)
		return -1;

	if (FUNC0(buf, size) < 0) {
		FUNC1(buf);
		return -1;
	}

	buf[size] = '\0';

	FUNC3(pevent, buf, size);

	FUNC1(buf);
	return 0;
}