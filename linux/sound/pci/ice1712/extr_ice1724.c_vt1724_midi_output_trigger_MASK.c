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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ice1712 {int midi_output; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  VT1724_IRQ_MPU_TX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*) ; 

__attribute__((used)) static void FUNC4(struct snd_rawmidi_substream *s, int up)
{
	struct snd_ice1712 *ice = s->rmidi->private_data;
	unsigned long flags;

	FUNC1(&ice->reg_lock, flags);
	if (up) {
		ice->midi_output = 1;
		FUNC3(ice);
	} else {
		ice->midi_output = 0;
		FUNC0(ice, VT1724_IRQ_MPU_TX, 0);
	}
	FUNC2(&ice->reg_lock, flags);
}