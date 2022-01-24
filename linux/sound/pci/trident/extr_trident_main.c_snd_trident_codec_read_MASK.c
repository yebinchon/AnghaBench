#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_trident {scalar_t__ device; int /*<<< orphan*/  reg_lock; TYPE_1__* card; int /*<<< orphan*/  ac97_detect; } ;
struct snd_ac97 {scalar_t__ num; struct snd_trident* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short DX_AC97_BUSY_READ ; 
 unsigned int DX_ACR1_AC97_R ; 
 unsigned short NX_AC97_BUSY_READ ; 
 unsigned int NX_ACR2_AC97_R_PRIMARY ; 
 unsigned int NX_ACR3_AC97_R_SECONDARY ; 
 unsigned short SI_AC97_AUDIO_BUSY ; 
 unsigned short SI_AC97_BUSY_READ ; 
 unsigned int SI_AC97_READ ; 
 unsigned int SI_AC97_SECONDARY ; 
 scalar_t__ TRIDENT_DEVICE_ID_DX ; 
 scalar_t__ TRIDENT_DEVICE_ID_NX ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned short,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned short FUNC6(struct snd_ac97 *ac97, unsigned short reg)
{
	unsigned int data = 0, treg;
	unsigned short count = 0xffff;
	unsigned long flags;
	struct snd_trident *trident = ac97->private_data;

	FUNC4(&trident->reg_lock, flags);
	if (trident->device == TRIDENT_DEVICE_ID_DX) {
		data = (DX_AC97_BUSY_READ | (reg & 0x000000ff));
		FUNC3(data, FUNC0(trident, DX_ACR1_AC97_R));
		do {
			data = FUNC2(FUNC0(trident, DX_ACR1_AC97_R));
			if ((data & DX_AC97_BUSY_READ) == 0)
				break;
		} while (--count);
	} else if (trident->device == TRIDENT_DEVICE_ID_NX) {
		data = (NX_AC97_BUSY_READ | (reg & 0x000000ff));
		treg = ac97->num == 0 ? NX_ACR2_AC97_R_PRIMARY : NX_ACR3_AC97_R_SECONDARY;
		FUNC3(data, FUNC0(trident, treg));
		do {
			data = FUNC2(FUNC0(trident, treg));
			if ((data & 0x00000C00) == 0)
				break;
		} while (--count);
	} else if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
		data = SI_AC97_BUSY_READ | SI_AC97_AUDIO_BUSY | (reg & 0x000000ff);
		if (ac97->num == 1)
			data |= SI_AC97_SECONDARY;
		FUNC3(data, FUNC0(trident, SI_AC97_READ));
		do {
			data = FUNC2(FUNC0(trident, SI_AC97_READ));
			if ((data & (SI_AC97_BUSY_READ)) == 0)
				break;
		} while (--count);
	}

	if (count == 0 && !trident->ac97_detect) {
		FUNC1(trident->card->dev,
			"ac97 codec read TIMEOUT [0x%x/0x%x]!!!\n",
			   reg, data);
		data = 0;
	}

	FUNC5(&trident->reg_lock, flags);
	return ((unsigned short) (data >> 16));
}