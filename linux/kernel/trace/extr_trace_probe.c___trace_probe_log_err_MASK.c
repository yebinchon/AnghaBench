#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int argc; int index; int /*<<< orphan*/  subsystem; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_probe_err_text ; 
 TYPE_1__ trace_probe_log ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(int offset, int err_type)
{
	char *command, *p;
	int i, len = 0, pos = 0;

	if (!trace_probe_log.argv)
		return;

	/* Recalcurate the length and allocate buffer */
	for (i = 0; i < trace_probe_log.argc; i++) {
		if (i == trace_probe_log.index)
			pos = len;
		len += FUNC3(trace_probe_log.argv[i]) + 1;
	}
	command = FUNC1(len, GFP_KERNEL);
	if (!command)
		return;

	if (trace_probe_log.index >= trace_probe_log.argc) {
		/**
		 * Set the error position is next to the last arg + space.
		 * Note that len includes the terminal null and the cursor
		 * appaers at pos + 1.
		 */
		pos = len;
		offset = 0;
	}

	/* And make a command string from argv array */
	p = command;
	for (i = 0; i < trace_probe_log.argc; i++) {
		len = FUNC3(trace_probe_log.argv[i]);
		FUNC2(p, trace_probe_log.argv[i]);
		p[len] = ' ';
		p += len + 1;
	}
	*(p - 1) = '\0';

	FUNC4(NULL, trace_probe_log.subsystem, command,
			trace_probe_err_text, err_type, pos + offset);

	FUNC0(command);
}