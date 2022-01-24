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
struct snd_emu8k_pcm {int /*<<< orphan*/  timer_lock; scalar_t__ timer_running; int /*<<< orphan*/  timer; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_emu8k_pcm *rec, int ch)
{
	unsigned long flags;
	struct snd_emu8000 *hw = rec->emu;

	FUNC0(hw, ch, 0x807F);

	/* stop timer */
	FUNC2(&rec->timer_lock, flags);
	if (rec->timer_running) {
		FUNC1(&rec->timer);
		rec->timer_running = 0;
	}
	FUNC3(&rec->timer_lock, flags);
}