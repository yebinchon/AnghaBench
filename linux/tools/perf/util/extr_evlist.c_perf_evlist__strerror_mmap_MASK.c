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
struct TYPE_2__ {int mmap_len; } ;
struct evlist {TYPE_1__ core; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
#define  EPERM 128 
 int STRERR_BUFSIZE ; 
 int FUNC0 (char*,size_t,char*,...) ; 
 char* FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 

int FUNC3(struct evlist *evlist, int err, char *buf, size_t size)
{
	char sbuf[STRERR_BUFSIZE], *emsg = FUNC1(err, sbuf, sizeof(sbuf));
	int pages_attempted = evlist->core.mmap_len / 1024, pages_max_per_user, printed = 0;

	switch (err) {
	case EPERM:
		FUNC2("kernel/perf_event_mlock_kb", &pages_max_per_user);
		printed += FUNC0(buf + printed, size - printed,
				     "Error:\t%s.\n"
				     "Hint:\tCheck /proc/sys/kernel/perf_event_mlock_kb (%d kB) setting.\n"
				     "Hint:\tTried using %zd kB.\n",
				     emsg, pages_max_per_user, pages_attempted);

		if (pages_attempted >= pages_max_per_user) {
			printed += FUNC0(buf + printed, size - printed,
					     "Hint:\tTry 'sudo sh -c \"echo %d > /proc/sys/kernel/perf_event_mlock_kb\"', or\n",
					     pages_max_per_user + pages_attempted);
		}

		printed += FUNC0(buf + printed, size - printed,
				     "Hint:\tTry using a smaller -m/--mmap-pages value.");
		break;
	default:
		FUNC0(buf, size, "%s", emsg);
		break;
	}

	return 0;
}