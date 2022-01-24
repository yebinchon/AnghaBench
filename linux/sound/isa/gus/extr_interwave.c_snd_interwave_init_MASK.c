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
struct snd_gus_card {int equal_irq; int codec_flag; int interwave; int max_flag; int /*<<< orphan*/  joystick_dac; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_GB_COMPATIBILITY ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_DECODE_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_EMULATION_IRQ ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_MPU401_CONTROL_A ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_MPU401_CONTROL_B ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_SOUND_BLASTER_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_VERSION_NUMBER ; 
 int /*<<< orphan*/ * joystick_dac ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int dev, struct snd_gus_card *gus)
{
	unsigned long flags;

	/* ok.. some InterWave specific initialization */
	FUNC1(&gus->reg_lock, flags);
	FUNC0(gus, SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, 0x00);
	FUNC0(gus, SNDRV_GF1_GB_COMPATIBILITY, 0x1f);
	FUNC0(gus, SNDRV_GF1_GB_DECODE_CONTROL, 0x49);
	FUNC0(gus, SNDRV_GF1_GB_VERSION_NUMBER, 0x11);
	FUNC0(gus, SNDRV_GF1_GB_MPU401_CONTROL_A, 0x00);
	FUNC0(gus, SNDRV_GF1_GB_MPU401_CONTROL_B, 0x30);
	FUNC0(gus, SNDRV_GF1_GB_EMULATION_IRQ, 0x00);
	FUNC2(&gus->reg_lock, flags);
	gus->equal_irq = 1;
	gus->codec_flag = 1;
	gus->interwave = 1;
	gus->max_flag = 1;
	gus->joystick_dac = joystick_dac[dev];

}