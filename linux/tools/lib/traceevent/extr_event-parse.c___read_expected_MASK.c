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
typedef  enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**) ; 
 int FUNC2 (char**) ; 
 int FUNC3 (int,char*,int,char const*) ; 

__attribute__((used)) static int FUNC4(enum tep_event_type expect, const char *str,
			   int newline_ok)
{
	enum tep_event_type type;
	char *token;
	int ret;

	if (newline_ok)
		type = FUNC1(&token);
	else
		type = FUNC2(&token);

	ret = FUNC3(type, token, expect, str);

	FUNC0(token);

	return ret;
}