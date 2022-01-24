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
 int FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *type)
{
	int i;
	char *ignored_types[] = {"font", "noBreak", "initial", "medial",
				 "final", "isolated", "circle", "super",
				 "sub", "vertical", "wide", "narrow",
				 "small", "square", "fraction", "compat"};

	for (i = 0 ; i < FUNC0(ignored_types); i++)
		if (FUNC1(type, ignored_types[i]) == 0)
			return 1;
	return 0;
}