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
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {unsigned int dacs; int /*<<< orphan*/ ** ak4396_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct oxygen *chip,
				  struct snd_info_buffer *buffer)
{
	struct generic_data *data = chip->model_data;
	unsigned int dac, i;

	for (dac = 0; dac < data->dacs; ++dac) {
		FUNC0(buffer, "\nAK4396 %u:", dac + 1);
		for (i = 0; i < 5; ++i)
			FUNC0(buffer, " %02x", data->ak4396_regs[dac][i]);
	}
	FUNC0(buffer, "\n");
}