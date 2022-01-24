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
struct xonar_cs43xx {int /*<<< orphan*/ * cs4398_regs; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xonar_cs43xx*,struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip,
			      struct snd_info_buffer *buffer)
{
	struct xonar_cs43xx *data = chip->model_data;
	unsigned int i;

	FUNC1(buffer, "\nCS4398: 7?");
	for (i = 2; i < 8; ++i)
		FUNC1(buffer, " %02x", data->cs4398_regs[i]);
	FUNC1(buffer, "\n");
	FUNC0(data, buffer);
}