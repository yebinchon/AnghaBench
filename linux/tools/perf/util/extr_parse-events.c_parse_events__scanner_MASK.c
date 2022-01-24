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
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*) ; 
 int parse_events_debug ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int,void**) ; 
 int FUNC5 (void*,void*) ; 

__attribute__((used)) static int FUNC6(const char *str, void *parse_state, int start_token)
{
	YY_BUFFER_STATE buffer;
	void *scanner;
	int ret;

	ret = FUNC4(start_token, &scanner);
	if (ret)
		return ret;

	buffer = FUNC2(str, scanner);

#ifdef PARSER_DEBUG
	parse_events_debug = 1;
#endif
	ret = FUNC5(parse_state, scanner);

	FUNC1(buffer, scanner);
	FUNC0(buffer, scanner);
	FUNC3(scanner);
	return ret;
}