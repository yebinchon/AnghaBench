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
struct TYPE_2__ {int client; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ source; } ;
struct snd_seq_client {int /*<<< orphan*/  ioctl_mutex; int /*<<< orphan*/  accept_output; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ SNDRV_SEQ_EVENT_KERNEL_ERROR ; 
 scalar_t__ SNDRV_SEQ_EVENT_NONE ; 
 scalar_t__ FUNC0 (struct snd_seq_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct snd_seq_client*,struct snd_seq_event*,struct file*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC6 (int) ; 

int FUNC7(int client, struct snd_seq_event *ev,
				  struct file *file, bool blocking)
{
	struct snd_seq_client *cptr;
	int result;

	if (FUNC3(!ev))
		return -EINVAL;

	if (ev->type == SNDRV_SEQ_EVENT_NONE)
		return 0; /* ignore this */
	if (ev->type == SNDRV_SEQ_EVENT_KERNEL_ERROR)
		return -EINVAL; /* quoted events can't be enqueued */

	/* fill in client number */
	ev->source.client = client;

	if (FUNC0(ev))
		return -EINVAL;

	cptr = FUNC6(client);
	if (cptr == NULL)
		return -EINVAL;
	
	if (!cptr->accept_output) {
		result = -EPERM;
	} else { /* send it */
		FUNC1(&cptr->ioctl_mutex);
		result = FUNC4(cptr, ev, file, blocking,
						      false, 0,
						      &cptr->ioctl_mutex);
		FUNC2(&cptr->ioctl_mutex);
	}

	FUNC5(cptr);
	return result;
}