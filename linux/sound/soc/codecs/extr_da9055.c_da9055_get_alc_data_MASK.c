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
typedef  int u8 ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int DA9055_ALC_AVG_ITERATIONS ; 
 int /*<<< orphan*/  DA9055_ALC_CIC_OP_LVL_CTRL ; 
 int /*<<< orphan*/  DA9055_ALC_CIC_OP_LVL_DATA ; 
 int DA9055_ALC_DATA_MIDDLE ; 
 int DA9055_ALC_DATA_TOP ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component, u8 reg_val)
{
	int mid_data, top_data;
	int sum = 0;
	u8 iteration;

	for (iteration = 0; iteration < DA9055_ALC_AVG_ITERATIONS;
	     iteration++) {
		/* Select the left or right channel and capture data */
		FUNC1(component, DA9055_ALC_CIC_OP_LVL_CTRL, reg_val);

		/* Select middle 8 bits for read back from data register */
		FUNC1(component, DA9055_ALC_CIC_OP_LVL_CTRL,
			      reg_val | DA9055_ALC_DATA_MIDDLE);
		mid_data = FUNC0(component, DA9055_ALC_CIC_OP_LVL_DATA);

		/* Select top 8 bits for read back from data register */
		FUNC1(component, DA9055_ALC_CIC_OP_LVL_CTRL,
			      reg_val | DA9055_ALC_DATA_TOP);
		top_data = FUNC0(component, DA9055_ALC_CIC_OP_LVL_DATA);

		sum += ((mid_data << 8) | (top_data << 16));
	}

	return sum / DA9055_ALC_AVG_ITERATIONS;
}