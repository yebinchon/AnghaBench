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
struct stm32_i2s_data {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/ * substream; int /*<<< orphan*/  i2sclk; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 scalar_t__ I2S_CGFR_MCKOE ; 
 int /*<<< orphan*/  STM32_I2S_CGFR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct stm32_i2s_data* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *cpu_dai)
{
	struct stm32_i2s_data *i2s = FUNC2(cpu_dai);
	unsigned long flags;

	FUNC1(i2s->regmap, STM32_I2S_CGFR_REG,
			   I2S_CGFR_MCKOE, (unsigned int)~I2S_CGFR_MCKOE);

	FUNC0(i2s->i2sclk);

	FUNC3(&i2s->irq_lock, flags);
	i2s->substream = NULL;
	FUNC4(&i2s->irq_lock, flags);
}