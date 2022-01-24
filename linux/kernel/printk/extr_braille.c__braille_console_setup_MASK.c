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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char) ; 

int FUNC3(char **str, char **brl_options)
{
	size_t len;

	len = FUNC1(*str, "brl,");
	if (len) {
		*brl_options = "";
		*str += len;
		return 0;
	}

	len = FUNC1(*str, "brl=");
	if (len) {
		*brl_options = *str + len;
		*str = FUNC2(*brl_options, ',');
		if (!*str) {
			FUNC0("need port name after brl=\n");
			return -EINVAL;
		}
		*((*str)++) = 0;
	}

	return 0;
}