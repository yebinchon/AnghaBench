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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int FUNC2(enum tep_event_type type, const char *token,
		    enum tep_event_type expect, const char *expect_tok)
{
	if (type != expect) {
		FUNC0("Error: expected type %d but read %d",
		    expect, type);
		return -1;
	}

	if (FUNC1(token, expect_tok) != 0) {
		FUNC0("Error: expected '%s' but read '%s'",
		    expect_tok, token);
		return -1;
	}
	return 0;
}