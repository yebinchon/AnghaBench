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
struct console {int flags; struct console* next; int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CON_BOOT ; 
 int CON_CONSDEV ; 
 int CON_ENABLED ; 
 int CON_EXTENDED ; 
 int FUNC0 (struct console*) ; 
 struct console* console_drivers ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nr_ext_console_drivers ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct console *console)
{
        struct console *a, *b;
	int res;

	FUNC4("%sconsole [%s%d] disabled\n",
		(console->flags & CON_BOOT) ? "boot" : "" ,
		console->name, console->index);

	res = FUNC0(console);
	if (res)
		return res;

	res = 1;
	FUNC1();
	if (console_drivers == console) {
		console_drivers=console->next;
		res = 0;
	} else if (console_drivers) {
		for (a=console_drivers->next, b=console_drivers ;
		     a; b=a, a=b->next) {
			if (a == console) {
				b->next = a->next;
				res = 0;
				break;
			}
		}
	}

	if (!res && (console->flags & CON_EXTENDED))
		nr_ext_console_drivers--;

	/*
	 * If this isn't the last console and it has CON_CONSDEV set, we
	 * need to set it on the next preferred console.
	 */
	if (console_drivers != NULL && console->flags & CON_CONSDEV)
		console_drivers->flags |= CON_CONSDEV;

	console->flags &= ~CON_ENABLED;
	FUNC3();
	FUNC2();
	return res;
}