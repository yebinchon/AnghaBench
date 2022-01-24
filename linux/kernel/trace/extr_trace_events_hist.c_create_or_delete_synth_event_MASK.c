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
struct synth_event {int /*<<< orphan*/  devent; scalar_t__ ref; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECANCELED ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 struct synth_event* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct synth_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct synth_event*) ; 

__attribute__((used)) static int FUNC7(int argc, char **argv)
{
	const char *name = argv[0];
	struct synth_event *event = NULL;
	int ret;

	/* trace_run_command() ensures argc != 0 */
	if (name[0] == '!') {
		FUNC4(&event_mutex);
		event = FUNC2(name + 1);
		if (event) {
			if (event->ref)
				ret = -EBUSY;
			else {
				ret = FUNC6(event);
				if (!ret) {
					FUNC1(&event->devent);
					FUNC3(event);
				}
			}
		} else
			ret = -ENOENT;
		FUNC5(&event_mutex);
		return ret;
	}

	ret = FUNC0(argc - 1, name, (const char **)argv + 1);
	return ret == -ECANCELED ? -EINVAL : ret;
}