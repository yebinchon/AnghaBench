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
struct snd_interwave {int /*<<< orphan*/  wss; int /*<<< orphan*/  pcm_status_reg; int /*<<< orphan*/  gus; int /*<<< orphan*/  gus_status_reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct snd_interwave *iwcard = dev_id;
	int loop, max = 5;
	int handled = 0;

	do {
		loop = 0;
		if (FUNC1(iwcard->gus_status_reg)) {
			handled = 1;
			FUNC2(irq, iwcard->gus);
			loop++;
		}
		if (FUNC1(iwcard->pcm_status_reg) & 0x01) {	/* IRQ bit is set? */
			handled = 1;
			FUNC3(irq, iwcard->wss);
			loop++;
		}
	} while (loop && --max > 0);
	return FUNC0(handled);
}