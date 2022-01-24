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
struct xonar_cs43xx {int /*<<< orphan*/ * cs4362a_regs; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct xonar_cs43xx *data,
				   struct snd_info_buffer *buffer)
{
	unsigned int i;

	FUNC0(buffer, "\nCS4362A:");
	for (i = 1; i <= 14; ++i)
		FUNC0(buffer, " %02x", data->cs4362a_regs[i]);
	FUNC0(buffer, "\n");
}