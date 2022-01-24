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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u16 ;
struct swm_input_ids {int /*<<< orphan*/  input_id; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (size_t) ; 
 size_t SST_CMD_SWM_MAX_INPUTS ; 
 int /*<<< orphan*/  SST_DEFAULT_MODULE_ID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t SST_SWM_INPUT_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * swm_mixer_input_ids ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *cmpnt,
		struct swm_input_ids *swm_input, unsigned int reg)
{
	uint i, is_set, nb_inputs = 0;
	u16 input_loc_id;

	FUNC2(cmpnt->dev, "reg: %#x\n", reg);
	for (i = 0; i < SST_SWM_INPUT_COUNT; i++) {
		is_set = reg & FUNC0(i);
		if (!is_set)
			continue;

		input_loc_id = swm_mixer_input_ids[i];
		FUNC1(2, swm_input->input_id,
				     input_loc_id, SST_DEFAULT_MODULE_ID);
		nb_inputs++;
		swm_input++;
		FUNC2(cmpnt->dev, "input id: %#x, nb_inputs: %d\n",
				input_loc_id, nb_inputs);

		if (nb_inputs == SST_CMD_SWM_MAX_INPUTS) {
			FUNC3(cmpnt->dev, "SET_SWM cmd max inputs reached");
			break;
		}
	}
	return nb_inputs;
}