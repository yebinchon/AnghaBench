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
struct oxygen {struct dg* model_data; } ;
struct dg {int /*<<< orphan*/ * cs4245_shadow; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CS4245_INT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

void FUNC3(struct oxygen *chip,
				  struct snd_info_buffer *buffer)
{
	struct dg *data = chip->model_data;
	unsigned int addr;

	FUNC2(buffer, "\nCS4245:");
	FUNC1(chip, CS4245_INT_STATUS);
	for (addr = 1; addr < FUNC0(data->cs4245_shadow); addr++)
		FUNC2(buffer, " %02x", data->cs4245_shadow[addr]);
	FUNC2(buffer, "\n");
}