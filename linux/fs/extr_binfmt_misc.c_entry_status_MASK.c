#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; char* interpreter; char* magic; int offset; char* mask; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  Enabled ; 
 int MISC_FMT_CREDENTIALS ; 
 int MISC_FMT_OPEN_BINARY ; 
 int MISC_FMT_OPEN_FILE ; 
 int MISC_FMT_PRESERVE_ARGV0 ; 
 int /*<<< orphan*/  Magic ; 
 int /*<<< orphan*/  VERBOSE_STATUS ; 
 char* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(Node *e, char *page)
{
	char *dp = page;
	const char *status = "disabled";

	if (FUNC2(Enabled, &e->flags))
		status = "enabled";

	if (!VERBOSE_STATUS) {
		FUNC1(page, "%s\n", status);
		return;
	}

	dp += FUNC1(dp, "%s\ninterpreter %s\n", status, e->interpreter);

	/* print the special flags */
	dp += FUNC1(dp, "flags: ");
	if (e->flags & MISC_FMT_PRESERVE_ARGV0)
		*dp++ = 'P';
	if (e->flags & MISC_FMT_OPEN_BINARY)
		*dp++ = 'O';
	if (e->flags & MISC_FMT_CREDENTIALS)
		*dp++ = 'C';
	if (e->flags & MISC_FMT_OPEN_FILE)
		*dp++ = 'F';
	*dp++ = '\n';

	if (!FUNC2(Magic, &e->flags)) {
		FUNC1(dp, "extension .%s\n", e->magic);
	} else {
		dp += FUNC1(dp, "offset %i\nmagic ", e->offset);
		dp = FUNC0(dp, e->magic, e->size);
		if (e->mask) {
			dp += FUNC1(dp, "\nmask ");
			dp = FUNC0(dp, e->mask, e->size);
		}
		*dp++ = '\n';
		*dp = '\0';
	}
}