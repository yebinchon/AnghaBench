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
struct trace {int /*<<< orphan*/  host; } ;
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,size_t,char*,...) ; 
 char* FUNC2 (struct thread*,int,struct trace*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

size_t FUNC4(struct trace *trace, pid_t pid, int fd, char *bf, size_t size)
{
        size_t printed = FUNC1(bf, size, "%d", fd);
	struct thread *thread = FUNC0(trace->host, pid, pid);

	if (thread) {
		const char *path = FUNC2(thread, fd, trace);

		if (path)
			printed += FUNC1(bf + printed, size - printed, "<%s>", path);

		FUNC3(thread);
	}

        return printed;
}