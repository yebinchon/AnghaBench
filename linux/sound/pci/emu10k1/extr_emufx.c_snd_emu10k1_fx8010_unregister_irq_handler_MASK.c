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
struct snd_emu10k1_fx8010_irq {struct snd_emu10k1_fx8010_irq* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; struct snd_emu10k1_fx8010_irq* irq_handlers; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; int /*<<< orphan*/ * dsp_interrupt; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTE_FXDSPENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_emu10k1 *emu,
					      struct snd_emu10k1_fx8010_irq *irq)
{
	struct snd_emu10k1_fx8010_irq *tmp;
	unsigned long flags;
	
	FUNC1(&emu->fx8010.irq_lock, flags);
	if ((tmp = emu->fx8010.irq_handlers) == irq) {
		emu->fx8010.irq_handlers = tmp->next;
		if (emu->fx8010.irq_handlers == NULL) {
			FUNC0(emu, INTE_FXDSPENABLE);
			emu->dsp_interrupt = NULL;
		}
	} else {
		while (tmp && tmp->next != irq)
			tmp = tmp->next;
		if (tmp)
			tmp->next = tmp->next->next;
	}
	FUNC2(&emu->fx8010.irq_lock, flags);
	return 0;
}