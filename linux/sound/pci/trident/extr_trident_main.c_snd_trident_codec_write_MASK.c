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
struct snd_trident {scalar_t__ device; int /*<<< orphan*/  reg_lock; } ;
struct snd_ac97 {int num; struct snd_trident* private_data; } ;

/* Variables and functions */
 unsigned short DX_AC97_BUSY_WRITE ; 
 unsigned int DX_ACR0_AC97_W ; 
 int NX_AC97_BUSY_WRITE ; 
 unsigned int NX_ACR1_AC97_W ; 
 unsigned short SI_AC97_AUDIO_BUSY ; 
 unsigned short SI_AC97_BUSY_WRITE ; 
 unsigned int SI_AC97_SECONDARY ; 
 unsigned int SI_AC97_WRITE ; 
 scalar_t__ TRIDENT_DEVICE_ID_DX ; 
 scalar_t__ TRIDENT_DEVICE_ID_NX ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,unsigned int) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97, unsigned short reg,
				    unsigned short wdata)
{
	unsigned int address, data;
	unsigned short count = 0xffff;
	unsigned long flags;
	struct snd_trident *trident = ac97->private_data;

	data = ((unsigned long) wdata) << 16;

	FUNC3(&trident->reg_lock, flags);
	if (trident->device == TRIDENT_DEVICE_ID_DX) {
		address = DX_ACR0_AC97_W;

		/* read AC-97 write register status */
		do {
			if ((FUNC1(FUNC0(trident, address)) & DX_AC97_BUSY_WRITE) == 0)
				break;
		} while (--count);

		data |= (DX_AC97_BUSY_WRITE | (reg & 0x000000ff));
	} else if (trident->device == TRIDENT_DEVICE_ID_NX) {
		address = NX_ACR1_AC97_W;

		/* read AC-97 write register status */
		do {
			if ((FUNC1(FUNC0(trident, address)) & NX_AC97_BUSY_WRITE) == 0)
				break;
		} while (--count);

		data |= (NX_AC97_BUSY_WRITE | (ac97->num << 8) | (reg & 0x000000ff));
	} else if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
		address = SI_AC97_WRITE;

		/* read AC-97 write register status */
		do {
			if ((FUNC1(FUNC0(trident, address)) & (SI_AC97_BUSY_WRITE)) == 0)
				break;
		} while (--count);

		data |= SI_AC97_BUSY_WRITE | SI_AC97_AUDIO_BUSY | (reg & 0x000000ff);
		if (ac97->num == 1)
			data |= SI_AC97_SECONDARY;
	} else {
		address = 0;	/* keep GCC happy */
		count = 0;	/* return */
	}

	if (count == 0) {
		FUNC4(&trident->reg_lock, flags);
		return;
	}
	FUNC2(data, FUNC0(trident, address));
	FUNC4(&trident->reg_lock, flags);
}