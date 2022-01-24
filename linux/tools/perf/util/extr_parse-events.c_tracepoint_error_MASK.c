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
struct parse_events_error {void* help; void* str; } ;
typedef  int /*<<< orphan*/  help ;

/* Variables and functions */
 int BUFSIZ ; 
#define  EACCES 129 
#define  ENOENT 128 
 int FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,char const*,char const*) ; 

__attribute__((used)) static void FUNC3(struct parse_events_error *e, int err,
			     const char *sys, const char *name)
{
	char help[BUFSIZ];

	if (!e)
		return;

	/*
	 * We get error directly from syscall errno ( > 0),
	 * or from encoded pointer's error ( < 0).
	 */
	err = FUNC0(err);

	switch (err) {
	case EACCES:
		e->str = FUNC1("can't access trace events");
		break;
	case ENOENT:
		e->str = FUNC1("unknown tracepoint");
		break;
	default:
		e->str = FUNC1("failed to add tracepoint");
		break;
	}

	FUNC2(err, help, sizeof(help), sys, name);
	e->help = FUNC1(help);
}