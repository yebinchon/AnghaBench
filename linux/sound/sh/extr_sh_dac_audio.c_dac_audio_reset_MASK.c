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
struct snd_sh_dac {int empty; scalar_t__ processed; int /*<<< orphan*/  data_buffer; int /*<<< orphan*/  buffer_end; int /*<<< orphan*/  buffer_begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_sh_dac*) ; 

__attribute__((used)) static void FUNC1(struct snd_sh_dac *chip)
{
	FUNC0(chip);
	chip->buffer_begin = chip->buffer_end = chip->data_buffer;
	chip->processed = 0;
	chip->empty = 1;
}