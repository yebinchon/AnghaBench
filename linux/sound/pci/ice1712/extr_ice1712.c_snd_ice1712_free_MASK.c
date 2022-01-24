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
struct snd_ice1712 {scalar_t__ irq; struct snd_ice1712* spec; int /*<<< orphan*/  pci; scalar_t__ port; } ;

/* Variables and functions */
 int ICE1712_MULTI_CAPTURE ; 
 int ICE1712_MULTI_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ ; 
 int /*<<< orphan*/  IRQMASK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ice1712*) ; 

__attribute__((used)) static int FUNC8(struct snd_ice1712 *ice)
{
	if (!ice->port)
		goto __hw_end;
	/* mask all interrupts */
	FUNC4(ICE1712_MULTI_CAPTURE | ICE1712_MULTI_PLAYBACK, FUNC0(ice, IRQ));
	FUNC4(0xff, FUNC1(ice, IRQMASK));
	/* --- */
__hw_end:
	if (ice->irq >= 0)
		FUNC2(ice->irq, ice);

	if (ice->port)
		FUNC6(ice->pci);
	FUNC7(ice);
	FUNC5(ice->pci);
	FUNC3(ice->spec);
	FUNC3(ice);
	return 0;
}