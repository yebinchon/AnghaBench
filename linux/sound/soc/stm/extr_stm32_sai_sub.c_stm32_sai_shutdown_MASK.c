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
struct stm32_sai_sub_data {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/ * substream; int /*<<< orphan*/  sai_ck; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAI_XIMR_MASK ; 
 int /*<<< orphan*/  STM_SAI_IMR_REGX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_sai_sub_data* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *cpu_dai)
{
	struct stm32_sai_sub_data *sai = FUNC2(cpu_dai);
	unsigned long flags;

	FUNC1(sai->regmap, STM_SAI_IMR_REGX, SAI_XIMR_MASK, 0);

	FUNC0(sai->sai_ck);

	FUNC3(&sai->irq_lock, flags);
	sai->substream = NULL;
	FUNC4(&sai->irq_lock, flags);
}