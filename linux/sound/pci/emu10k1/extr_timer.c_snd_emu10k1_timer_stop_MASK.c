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
struct snd_timer {int dummy; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTE_INTERVALTIMERENB ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC1 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_timer *timer)
{
	struct snd_emu10k1 *emu;
	unsigned long flags;

	emu = FUNC1(timer);
	FUNC2(&emu->reg_lock, flags);
	FUNC0(emu, INTE_INTERVALTIMERENB);
	FUNC3(&emu->reg_lock, flags);
	return 0;
}