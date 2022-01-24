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
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int FUNC2(const char *modname)
{
	const char *myname;

	myname = FUNC1(modname, '/');
	if (myname)
		myname++;
	else
		myname = modname;

	return (FUNC0(myname, "vmlinux") == 0) ||
	       (FUNC0(myname, "vmlinux.o") == 0);
}