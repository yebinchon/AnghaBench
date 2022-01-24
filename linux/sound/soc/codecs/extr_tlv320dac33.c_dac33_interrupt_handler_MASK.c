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
struct tlv320dac33_priv {scalar_t__ fifo_mode; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  t_stamp1; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DAC33_FIFO_MODE7 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tlv320dac33_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct snd_soc_component *component = dev;
	struct tlv320dac33_priv *dac33 = FUNC3(component);
	unsigned long flags;

	FUNC4(&dac33->lock, flags);
	dac33->t_stamp1 = FUNC1(FUNC0());
	FUNC5(&dac33->lock, flags);

	/* Do not schedule the workqueue in Mode7 */
	if (dac33->fifo_mode != DAC33_FIFO_MODE7)
		FUNC2(&dac33->work);

	return IRQ_HANDLED;
}