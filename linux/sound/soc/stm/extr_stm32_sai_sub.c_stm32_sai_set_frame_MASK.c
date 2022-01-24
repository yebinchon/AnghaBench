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
struct stm32_sai_sub_data {int fmt; int fs_length; int slot_width; int slots; int data_size; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SAI_XFRCR_FRL_MASK ; 
 int FUNC0 (int) ; 
 int SAI_XFRCR_FSALL_MASK ; 
 int FUNC1 (int) ; 
 int SAI_XSLOTR_FBOFF_MASK ; 
 int FUNC2 (int) ; 
 int SND_SOC_DAIFMT_DSP_A ; 
 int SND_SOC_DAIFMT_DSP_B ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
 int SND_SOC_DAIFMT_LSB ; 
 int /*<<< orphan*/  STM_SAI_FRCR_REGX ; 
 int /*<<< orphan*/  STM_SAI_SLOTR_REGX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct stm32_sai_sub_data* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_dai *cpu_dai)
{
	struct stm32_sai_sub_data *sai = FUNC5(cpu_dai);
	int fs_active, offset, format;
	int frcr, frcr_mask;

	format = sai->fmt & SND_SOC_DAIFMT_FORMAT_MASK;
	sai->fs_length = sai->slot_width * sai->slots;

	fs_active = sai->fs_length / 2;
	if ((format == SND_SOC_DAIFMT_DSP_A) ||
	    (format == SND_SOC_DAIFMT_DSP_B))
		fs_active = 1;

	frcr = FUNC0((sai->fs_length - 1));
	frcr |= FUNC1((fs_active - 1));
	frcr_mask = SAI_XFRCR_FRL_MASK | SAI_XFRCR_FSALL_MASK;

	FUNC3(cpu_dai->dev, "Frame length %d, frame active %d\n",
		sai->fs_length, fs_active);

	FUNC4(sai->regmap, STM_SAI_FRCR_REGX, frcr_mask, frcr);

	if ((sai->fmt & SND_SOC_DAIFMT_FORMAT_MASK) == SND_SOC_DAIFMT_LSB) {
		offset = sai->slot_width - sai->data_size;

		FUNC4(sai->regmap, STM_SAI_SLOTR_REGX,
				   SAI_XSLOTR_FBOFF_MASK,
				   FUNC2(offset));
	}
}