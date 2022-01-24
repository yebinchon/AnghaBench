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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct snd_sof_dev {int dtrace_draining; int /*<<< orphan*/  trace_sleep; int /*<<< orphan*/  dtrace_is_enabled; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct snd_sof_dev*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t FUNC7(struct snd_sof_dev *sdev,
				   loff_t pos, size_t buffer_size)
{
	wait_queue_entry_t wait;
	size_t ret = FUNC6(sdev, pos, buffer_size);

	/* data immediately available */
	if (ret)
		return ret;

	if (!sdev->dtrace_is_enabled && sdev->dtrace_draining) {
		/*
		 * tracing has ended and all traces have been
		 * read by client, return EOF
		 */
		sdev->dtrace_draining = false;
		return 0;
	}

	/* wait for available trace data from FW */
	FUNC1(&wait, current);
	FUNC4(TASK_INTERRUPTIBLE);
	FUNC0(&sdev->trace_sleep, &wait);

	if (!FUNC5(current)) {
		/* set timeout to max value, no error code */
		FUNC3(MAX_SCHEDULE_TIMEOUT);
	}
	FUNC2(&sdev->trace_sleep, &wait);

	return FUNC6(sdev, pos, buffer_size);
}