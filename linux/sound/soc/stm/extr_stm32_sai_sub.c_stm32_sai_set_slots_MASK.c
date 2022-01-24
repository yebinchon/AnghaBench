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
struct stm32_sai_sub_data {scalar_t__ slot_width; scalar_t__ data_size; int slots; int slot_mask; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAI_SLOT_SIZE_AUTO ; 
 int SAI_XSLOTR_NBSLOT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SAI_XSLOTR_SLOTEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SAI_XSLOTR_SLOTSZ_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STM_SAI_SLOTR_REGX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct stm32_sai_sub_data* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dai *cpu_dai)
{
	struct stm32_sai_sub_data *sai = FUNC7(cpu_dai);
	int slotr, slot_sz;

	FUNC5(sai->regmap, STM_SAI_SLOTR_REGX, &slotr);

	/*
	 * If SLOTSZ is set to auto in SLOTR, align slot width on data size
	 * By default slot width = data size, if not forced from DT
	 */
	slot_sz = slotr & SAI_XSLOTR_SLOTSZ_MASK;
	if (slot_sz == FUNC2(SAI_SLOT_SIZE_AUTO))
		sai->slot_width = sai->data_size;

	if (sai->slot_width < sai->data_size) {
		FUNC4(cpu_dai->dev,
			"Data size %d larger than slot width\n",
			sai->data_size);
		return -EINVAL;
	}

	/* Slot number is set to 2, if not specified in DT */
	if (!sai->slots)
		sai->slots = 2;

	/* The number of slots in the audio frame is equal to NBSLOT[3:0] + 1*/
	FUNC6(sai->regmap, STM_SAI_SLOTR_REGX,
			   SAI_XSLOTR_NBSLOT_MASK,
			   FUNC0((sai->slots - 1)));

	/* Set default slots mask if not already set from DT */
	if (!(slotr & SAI_XSLOTR_SLOTEN_MASK)) {
		sai->slot_mask = (1 << sai->slots) - 1;
		FUNC6(sai->regmap,
				   STM_SAI_SLOTR_REGX, SAI_XSLOTR_SLOTEN_MASK,
				   FUNC1(sai->slot_mask));
	}

	FUNC3(cpu_dai->dev, "Slots %d, slot width %d\n",
		sai->slots, sai->slot_width);

	return 0;
}