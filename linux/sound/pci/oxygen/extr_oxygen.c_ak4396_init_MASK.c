#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dac_channels_pcm; } ;
struct oxygen {int /*<<< orphan*/  card; TYPE_1__ model; struct generic_data* model_data; } ;
struct generic_data {int dacs; int** ak4396_regs; } ;

/* Variables and functions */
 size_t AK4396_CONTROL_2 ; 
 int AK4396_DEM_OFF ; 
 int AK4396_DFS_NORMAL ; 
 int AK4396_SMUTE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	struct generic_data *data = chip->model_data;

	data->dacs = chip->model.dac_channels_pcm / 2;
	data->ak4396_regs[0][AK4396_CONTROL_2] =
		AK4396_SMUTE | AK4396_DEM_OFF | AK4396_DFS_NORMAL;
	FUNC0(chip);
	FUNC1(chip->card, "AK4396");
}