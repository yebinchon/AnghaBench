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
struct xonar_wm87x6 {int /*<<< orphan*/ * wm8776_regs; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct oxygen *chip,
				  struct snd_info_buffer *buffer)
{
	struct xonar_wm87x6 *data = chip->model_data;
	unsigned int i;

	FUNC0(buffer, "\nWM8776:\n00:");
	for (i = 0; i < 0x10; ++i)
		FUNC0(buffer, " %03x", data->wm8776_regs[i]);
	FUNC0(buffer, "\n10:");
	for (i = 0x10; i < 0x17; ++i)
		FUNC0(buffer, " %03x", data->wm8776_regs[i]);
	FUNC0(buffer, "\n");
}