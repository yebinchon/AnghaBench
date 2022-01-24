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
struct snd_m3 {int dummy; } ;
struct snd_ac97 {struct snd_m3* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODEC_COMMAND ; 
 int /*<<< orphan*/  CODEC_DATA ; 
 scalar_t__ FUNC0 (struct snd_m3*) ; 
 unsigned short FUNC1 (struct snd_m3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_m3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short
FUNC3(struct snd_ac97 *ac97, unsigned short reg)
{
	struct snd_m3 *chip = ac97->private_data;
	unsigned short data = 0xffff;

	if (FUNC0(chip))
		goto fail;
	FUNC2(chip, 0x80 | (reg & 0x7f), CODEC_COMMAND);
	if (FUNC0(chip))
		goto fail;
	data = FUNC1(chip, CODEC_DATA);
fail:
	return data;
}