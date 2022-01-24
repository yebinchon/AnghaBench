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
 int TEP_EVENT_ERROR ; 
 int TEP_EVENT_NEWLINE ; 
 int TEP_EVENT_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char FUNC4 () ; 
 int FUNC5 (char**) ; 

__attribute__((used)) static enum tep_event_type FUNC6(char **tok)
{
	enum tep_event_type type;
	char *token = NULL;

	do {
		FUNC0(token);
		type = FUNC5(&token);
	} while (type == TEP_EVENT_NEWLINE || type == TEP_EVENT_SPACE);

	/* If token is = or ! check to see if the next char is ~ */
	if (token &&
	    (FUNC3(token, "=") == 0 || FUNC3(token, "!") == 0) &&
	    FUNC4() == '~') {
		/* append it */
		*tok = FUNC1(3);
		if (*tok == NULL) {
			FUNC0(token);
			return TEP_EVENT_ERROR;
		}
		FUNC2(*tok, "%c%c", *token, '~');
		FUNC0(token);
		/* Now remove the '~' from the buffer */
		FUNC5(&token);
		FUNC0(token);
	} else
		*tok = token;

	return type;
}