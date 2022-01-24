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
 int TEP_EVENT_DELIM ; 
 int TEP_EVENT_DQUOTE ; 
 int TEP_EVENT_ITEM ; 
 int TEP_EVENT_NEWLINE ; 
 int TEP_EVENT_NONE ; 
 int TEP_EVENT_OP ; 
 int TEP_EVENT_SPACE ; 
 int TEP_EVENT_SQUOTE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static enum tep_event_type FUNC3(int ch)
{
	if (ch == '\n')
		return TEP_EVENT_NEWLINE;
	if (FUNC2(ch))
		return TEP_EVENT_SPACE;
	if (FUNC0(ch) || ch == '_')
		return TEP_EVENT_ITEM;
	if (ch == '\'')
		return TEP_EVENT_SQUOTE;
	if (ch == '"')
		return TEP_EVENT_DQUOTE;
	if (!FUNC1(ch))
		return TEP_EVENT_NONE;
	if (ch == '(' || ch == ')' || ch == ',')
		return TEP_EVENT_DELIM;

	return TEP_EVENT_OP;
}