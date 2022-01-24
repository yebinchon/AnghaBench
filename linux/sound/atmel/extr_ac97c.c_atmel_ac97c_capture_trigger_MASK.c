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
struct snd_pcm_substream {int dummy; } ;
struct atmel_ac97c {int opened; scalar_t__ regs; } ;

/* Variables and functions */
 unsigned long AC97C_CMR_CENA ; 
 unsigned long AC97C_CSR_ENDRX ; 
 scalar_t__ ATMEL_PDC_PTCR ; 
 scalar_t__ ATMEL_PDC_PTSR ; 
 unsigned long ATMEL_PDC_RXTDIS ; 
 unsigned long ATMEL_PDC_RXTEN ; 
 int /*<<< orphan*/  CAMR ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 unsigned long FUNC0 (struct atmel_ac97c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_ac97c*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 struct atmel_ac97c* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	struct atmel_ac97c *chip = FUNC3(substream);
	unsigned long camr, ptcr = 0;

	camr = FUNC0(chip, CAMR);
	ptcr = FUNC2(chip->regs + ATMEL_PDC_PTSR);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE: /* fall through */
	case SNDRV_PCM_TRIGGER_RESUME: /* fall through */
	case SNDRV_PCM_TRIGGER_START:
		ptcr = ATMEL_PDC_RXTEN;
		camr |= AC97C_CMR_CENA | AC97C_CSR_ENDRX;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH: /* fall through */
	case SNDRV_PCM_TRIGGER_SUSPEND: /* fall through */
	case SNDRV_PCM_TRIGGER_STOP:
		ptcr |= ATMEL_PDC_RXTDIS;
		if (chip->opened <= 1)
			camr &= ~AC97C_CMR_CENA;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(chip, CAMR, camr);
	FUNC4(ptcr, chip->regs + ATMEL_PDC_PTCR);
	return 0;
}