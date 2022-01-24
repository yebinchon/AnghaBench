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
 int /*<<< orphan*/  BAD_EVENT_NAME ; 
 int /*<<< orphan*/  BAD_GROUP_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  EVENT_TOO_LONG ; 
 int /*<<< orphan*/  GROUP_TOO_LONG ; 
 int MAX_EVENT_NAME_LEN ; 
 int /*<<< orphan*/  NO_EVENT_NAME ; 
 int /*<<< orphan*/  NO_GROUP_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(const char **pevent, const char **pgroup,
				char *buf, int offset)
{
	const char *slash, *event = *pevent;
	int len;

	slash = FUNC1(event, '/');
	if (slash) {
		if (slash == event) {
			FUNC4(offset, NO_GROUP_NAME);
			return -EINVAL;
		}
		if (slash - event + 1 > MAX_EVENT_NAME_LEN) {
			FUNC4(offset, GROUP_TOO_LONG);
			return -EINVAL;
		}
		FUNC2(buf, event, slash - event + 1);
		if (!FUNC0(buf)) {
			FUNC4(offset, BAD_GROUP_NAME);
			return -EINVAL;
		}
		*pgroup = buf;
		*pevent = slash + 1;
		offset += slash - event + 1;
		event = *pevent;
	}
	len = FUNC3(event);
	if (len == 0) {
		FUNC4(offset, NO_EVENT_NAME);
		return -EINVAL;
	} else if (len > MAX_EVENT_NAME_LEN) {
		FUNC4(offset, EVENT_TOO_LONG);
		return -EINVAL;
	}
	if (!FUNC0(event)) {
		FUNC4(offset, BAD_EVENT_NAME);
		return -EINVAL;
	}
	return 0;
}