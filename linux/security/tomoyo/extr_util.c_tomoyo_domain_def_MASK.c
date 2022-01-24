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
 unsigned char* FUNC0 (unsigned char const*,char) ; 
 int FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int) ; 

bool FUNC3(const unsigned char *buffer)
{
	const unsigned char *cp;
	int len;

	if (*buffer != '<')
		return false;
	cp = FUNC0(buffer, ' ');
	if (!cp)
		len = FUNC1(buffer);
	else
		len = cp - buffer;
	if (buffer[len - 1] != '>' ||
	    !FUNC2(buffer + 1, len - 2))
		return false;
	return true;
}