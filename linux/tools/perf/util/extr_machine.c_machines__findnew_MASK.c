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
struct strlist {int dummy; } ;
struct machines {int dummy; } ;
struct machine {scalar_t__ pid; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {char* guestmount; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_GUEST_KERNEL_ID ; 
 scalar_t__ HOST_KERNEL_ID ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct machine* FUNC1 (struct machines*,scalar_t__,char const*) ; 
 struct machine* FUNC2 (struct machines*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct strlist*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strlist*,char*) ; 
 struct strlist* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 

struct machine *FUNC8(struct machines *machines, pid_t pid)
{
	char path[PATH_MAX];
	const char *root_dir = "";
	struct machine *machine = FUNC2(machines, pid);

	if (machine && (machine->pid == pid))
		goto out;

	if ((pid != HOST_KERNEL_ID) &&
	    (pid != DEFAULT_GUEST_KERNEL_ID) &&
	    (symbol_conf.guestmount)) {
		FUNC4(path, "%s/%d", symbol_conf.guestmount, pid);
		if (FUNC0(path, R_OK)) {
			static struct strlist *seen;

			if (!seen)
				seen = FUNC7(NULL, NULL);

			if (!FUNC6(seen, path)) {
				FUNC3("Can't access file %s\n", path);
				FUNC5(seen, path);
			}
			machine = NULL;
			goto out;
		}
		root_dir = path;
	}

	machine = FUNC1(machines, pid, root_dir);
out:
	return machine;
}