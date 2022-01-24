#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_queue {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  client; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {TYPE_1__ queue; } ;
struct snd_seq_event {TYPE_3__ source; TYPE_2__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_seq_queue*,struct snd_seq_event*,int,int) ; 

int FUNC6(struct snd_seq_event *ev, int atomic, int hop)
{
	struct snd_seq_queue *q;

	if (FUNC4(!ev))
		return -EINVAL;
	q = FUNC3(ev->data.queue.queue);

	if (q == NULL)
		return -EINVAL;

	if (! FUNC0(q, ev->source.client)) {
		FUNC2(q);
		return -EPERM;
	}

	FUNC5(q, ev, atomic, hop);

	FUNC1(q);
	FUNC2(q);
	return 0;
}