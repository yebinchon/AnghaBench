#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_sb_csp {int running; TYPE_1__* chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  mixer_lock; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 scalar_t__ SB_DSP4_PCM_DEV ; 
 int SNDRV_SB_CSP_ST_PAUSED ; 
 int SNDRV_SB_CSP_ST_QSOUND ; 
 int SNDRV_SB_CSP_ST_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 unsigned char FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_sb_csp * p)
{
	int result;
	unsigned char mixL, mixR;
	unsigned long flags;

	if (!(p->running & SNDRV_SB_CSP_ST_RUNNING))
		return 0;

	/* Mute PCM volume */
	FUNC5(&p->chip->mixer_lock, flags);
	mixL = FUNC2(p->chip, SB_DSP4_PCM_DEV);
	mixR = FUNC2(p->chip, SB_DSP4_PCM_DEV + 1);
	FUNC3(p->chip, SB_DSP4_PCM_DEV, mixL & 0x7);
	FUNC3(p->chip, SB_DSP4_PCM_DEV + 1, mixR & 0x7);

	FUNC4(&p->chip->reg_lock);
	if (p->running & SNDRV_SB_CSP_ST_QSOUND) {
		FUNC0(p->chip, 0xe0, 0x01);
		/* disable QSound decoder */
		FUNC0(p->chip, 0x00, 0x00);
		FUNC0(p->chip, 0x01, 0x00);

		p->running &= ~SNDRV_SB_CSP_ST_QSOUND;
	}
	result = FUNC1(p->chip, 0xc0);	/* c0 = STOP */
	FUNC6(&p->chip->reg_lock);

	/* restore PCM volume */
	FUNC3(p->chip, SB_DSP4_PCM_DEV, mixL);
	FUNC3(p->chip, SB_DSP4_PCM_DEV + 1, mixR);
	FUNC7(&p->chip->mixer_lock, flags);

	if (!(result))
		p->running &= ~(SNDRV_SB_CSP_ST_PAUSED | SNDRV_SB_CSP_ST_RUNNING);
	return result;
}