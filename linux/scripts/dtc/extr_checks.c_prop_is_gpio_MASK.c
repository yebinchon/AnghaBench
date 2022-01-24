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
struct property {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static bool FUNC3(struct property *prop)
{
	char *str;

	/*
	 * *-gpios and *-gpio can appear in property names,
	 * so skip over any false matches (only one known ATM)
	 */
	if (FUNC2(prop->name, "nr-gpio"))
		return false;

	str = FUNC1(prop->name, '-');
	if (str)
		str++;
	else
		str = prop->name;
	if (!(FUNC0(str, "gpios") || FUNC0(str, "gpio")))
		return false;

	return true;
}