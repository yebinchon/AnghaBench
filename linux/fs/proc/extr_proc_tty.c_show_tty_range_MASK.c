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
struct tty_driver {char* driver_name; int num; int type; scalar_t__ subtype; int /*<<< orphan*/  name; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 scalar_t__ PTY_TYPE_SLAVE ; 
 scalar_t__ SYSTEM_TYPE_CONSOLE ; 
 scalar_t__ SYSTEM_TYPE_SYSCONS ; 
 scalar_t__ SYSTEM_TYPE_TTY ; 
#define  TTY_DRIVER_TYPE_CONSOLE 131 
#define  TTY_DRIVER_TYPE_PTY 130 
#define  TTY_DRIVER_TYPE_SERIAL 129 
#define  TTY_DRIVER_TYPE_SYSTEM 128 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC5(struct seq_file *m, struct tty_driver *p,
	dev_t from, int num)
{
	FUNC2(m, "%-20s ", p->driver_name ? p->driver_name : "unknown");
	FUNC2(m, "/dev/%-8s ", p->name);
	if (p->num > 1) {
		FUNC2(m, "%3d %d-%d ", FUNC0(from), FUNC1(from),
			FUNC1(from) + num - 1);
	} else {
		FUNC2(m, "%3d %7d ", FUNC0(from), FUNC1(from));
	}
	switch (p->type) {
	case TTY_DRIVER_TYPE_SYSTEM:
		FUNC4(m, "system");
		if (p->subtype == SYSTEM_TYPE_TTY)
			FUNC4(m, ":/dev/tty");
		else if (p->subtype == SYSTEM_TYPE_SYSCONS)
			FUNC4(m, ":console");
		else if (p->subtype == SYSTEM_TYPE_CONSOLE)
			FUNC4(m, ":vtmaster");
		break;
	case TTY_DRIVER_TYPE_CONSOLE:
		FUNC4(m, "console");
		break;
	case TTY_DRIVER_TYPE_SERIAL:
		FUNC4(m, "serial");
		break;
	case TTY_DRIVER_TYPE_PTY:
		if (p->subtype == PTY_TYPE_MASTER)
			FUNC4(m, "pty:master");
		else if (p->subtype == PTY_TYPE_SLAVE)
			FUNC4(m, "pty:slave");
		else
			FUNC4(m, "pty");
		break;
	default:
		FUNC2(m, "type:%d.%d", p->type, p->subtype);
	}
	FUNC3(m, '\n');
}