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
struct timer_list {int dummy; } ;
struct snd_korg1212 {scalar_t__ stop_pending_cnt; int dsp_stop_is_processed; size_t cardState; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_1__* sharedBufferPtr; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {scalar_t__ cardCommand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct snd_korg1212* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct snd_korg1212* korg1212 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * stateName ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct snd_korg1212 *korg1212 = FUNC2(korg1212, t, timer);
	unsigned long flags;
	
	FUNC5(&korg1212->lock, flags);
	if (korg1212->sharedBufferPtr->cardCommand == 0) {
		/* ack'ed */
		korg1212->stop_pending_cnt = 0;
		korg1212->dsp_stop_is_processed = 1;
		FUNC7(&korg1212->wait);
		FUNC1("K1212_DEBUG: Stop ack'ed [%s]\n",
					   stateName[korg1212->cardState]);
	} else {
		if (--korg1212->stop_pending_cnt > 0) {
			/* reprogram timer */
			FUNC3(&korg1212->timer, jiffies + 1);
		} else {
			FUNC4("korg1212_timer_func timeout\n");
			korg1212->sharedBufferPtr->cardCommand = 0;
			korg1212->dsp_stop_is_processed = 1;
			FUNC7(&korg1212->wait);
			FUNC0("K1212_DEBUG: Stop timeout [%s]\n",
					   stateName[korg1212->cardState]);
		}
	}
	FUNC6(&korg1212->lock, flags);
}