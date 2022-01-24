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
typedef  void* u16 ;
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {void* spdif_input_volume_right; void* spdif_input_volume_left; int /*<<< orphan*/ * asynch_rx_scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (struct snd_cs46xx * chip, u16 left, u16 right)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	FUNC1(&chip->spos_mutex);

	if (ins->asynch_rx_scb != NULL)
		FUNC0 (chip,ins->asynch_rx_scb,
					   left,right);

	ins->spdif_input_volume_left = left;
	ins->spdif_input_volume_right = right;

	FUNC2(&chip->spos_mutex);

	return 0;
}