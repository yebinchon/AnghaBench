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
struct TYPE_2__ {int exclusiveClass; } ;
struct snd_emux_voice {TYPE_1__ reg; struct snd_emux_port* port; int /*<<< orphan*/  state; } ;
struct snd_emux_port {int dummy; } ;
struct snd_emux {int max_voices; int /*<<< orphan*/  voice_lock; struct snd_emux_voice* voices; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux*,struct snd_emux_voice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct snd_emux *emu, struct snd_emux_port *port, int exclass)
{
	struct snd_emux_voice *vp;
	int  i;
	unsigned long flags;

	FUNC1(&emu->voice_lock, flags);
	for (i = 0; i < emu->max_voices; i++) {
		vp = &emu->voices[i];
		if (FUNC0(vp->state) && vp->port == port &&
		    vp->reg.exclusiveClass == exclass) {
			FUNC3(emu, vp, 0);
		}
	}
	FUNC2(&emu->voice_lock, flags);
}