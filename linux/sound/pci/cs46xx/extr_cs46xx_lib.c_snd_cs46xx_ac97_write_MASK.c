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
struct snd_cs46xx {int dummy; } ;
struct snd_ac97 {int num; struct snd_cs46xx* private_data; } ;

/* Variables and functions */
 int CS46XX_PRIMARY_CODEC_INDEX ; 
 int CS46XX_SECONDARY_CODEC_INDEX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,unsigned short,unsigned short,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97,
				   unsigned short reg,
				   unsigned short val)
{
	struct snd_cs46xx *chip = ac97->private_data;
	int codec_index = ac97->num;

	if (FUNC0(codec_index != CS46XX_PRIMARY_CODEC_INDEX &&
		       codec_index != CS46XX_SECONDARY_CODEC_INDEX))
		return;

	FUNC1(chip, reg, val, codec_index);
}