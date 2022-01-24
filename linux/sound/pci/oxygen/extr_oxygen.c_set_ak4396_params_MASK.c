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
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int** ak4396_regs; unsigned int dacs; } ;

/* Variables and functions */
 size_t AK4396_CONTROL_1 ; 
 size_t AK4396_CONTROL_2 ; 
 int AK4396_DFS_DOUBLE ; 
 int AK4396_DFS_MASK ; 
 int AK4396_DFS_NORMAL ; 
 int AK4396_DFS_QUAD ; 
 int AK4396_DIF_24_MSB ; 
 int AK4396_RSTN ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,unsigned int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip,
			      struct snd_pcm_hw_params *params)
{
	struct generic_data *data = chip->model_data;
	unsigned int i;
	u8 value;

	value = data->ak4396_regs[0][AK4396_CONTROL_2] & ~AK4396_DFS_MASK;
	if (FUNC2(params) <= 54000)
		value |= AK4396_DFS_NORMAL;
	else if (FUNC2(params) <= 108000)
		value |= AK4396_DFS_DOUBLE;
	else
		value |= AK4396_DFS_QUAD;

	FUNC1(1); /* wait for the new MCLK to become stable */

	if (value != data->ak4396_regs[0][AK4396_CONTROL_2]) {
		for (i = 0; i < data->dacs; ++i) {
			FUNC0(chip, i, AK4396_CONTROL_1,
				     AK4396_DIF_24_MSB);
			FUNC0(chip, i, AK4396_CONTROL_2, value);
			FUNC0(chip, i, AK4396_CONTROL_1,
				     AK4396_DIF_24_MSB | AK4396_RSTN);
		}
	}
}