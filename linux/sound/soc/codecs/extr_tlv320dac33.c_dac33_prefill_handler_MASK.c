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
struct tlv320dac33_priv {int fifo_mode; int /*<<< orphan*/  lock; void* mode7_us_to_lthr; void* t_stamp1; int /*<<< orphan*/  alarm_threshold; int /*<<< orphan*/  burst_rate; void* t_stamp2; int /*<<< orphan*/  nsample; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC33_FIFO_IRQ_MASK ; 
#define  DAC33_FIFO_MODE1 129 
#define  DAC33_FIFO_MODE7 128 
 int /*<<< orphan*/  DAC33_MAT ; 
 int /*<<< orphan*/  DAC33_MODE7_MARGIN ; 
 int /*<<< orphan*/  DAC33_MUT ; 
 int /*<<< orphan*/  DAC33_NSAMPLE_MSB ; 
 int /*<<< orphan*/  DAC33_PREFILL_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC10(struct tlv320dac33_priv *dac33)
{
	struct snd_soc_component *component = dac33->component;
	unsigned int delay;
	unsigned long flags;

	switch (dac33->fifo_mode) {
	case DAC33_FIFO_MODE1:
		FUNC3(component, DAC33_NSAMPLE_MSB,
			FUNC0(dac33->nsample));

		/* Take the timestamps */
		FUNC7(&dac33->lock, flags);
		dac33->t_stamp2 = FUNC6(FUNC5());
		dac33->t_stamp1 = dac33->t_stamp2;
		FUNC8(&dac33->lock, flags);

		FUNC3(component, DAC33_PREFILL_MSB,
				FUNC0(dac33->alarm_threshold));
		/* Enable Alarm Threshold IRQ with a delay */
		delay = FUNC1(dac33->burst_rate,
				     dac33->alarm_threshold) + 1000;
		FUNC9(delay, delay + 500);
		FUNC2(component, DAC33_FIFO_IRQ_MASK, DAC33_MAT);
		break;
	case DAC33_FIFO_MODE7:
		/* Take the timestamp */
		FUNC7(&dac33->lock, flags);
		dac33->t_stamp1 = FUNC6(FUNC5());
		/* Move back the timestamp with drain time */
		dac33->t_stamp1 -= dac33->mode7_us_to_lthr;
		FUNC8(&dac33->lock, flags);

		FUNC3(component, DAC33_PREFILL_MSB,
				FUNC0(DAC33_MODE7_MARGIN));

		/* Enable Upper Threshold IRQ */
		FUNC2(component, DAC33_FIFO_IRQ_MASK, DAC33_MUT);
		break;
	default:
		FUNC4(component->dev, "Unhandled FIFO mode: %d\n",
							dac33->fifo_mode);
		break;
	}
}