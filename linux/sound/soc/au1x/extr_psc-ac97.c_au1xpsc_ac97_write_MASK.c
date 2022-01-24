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
struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 unsigned int AC97_RW_RETRIES ; 
 unsigned short FUNC2 (unsigned short) ; 
 int PSC_AC97EVNT_CD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC5 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct snd_ac97 *ac97, unsigned short reg,
				unsigned short val)
{
	struct au1xpsc_audio_data *pscdata = FUNC5(ac97);
	unsigned int tmo, retry;

	FUNC4(PSC_AC97EVNT_CD, FUNC1(pscdata));
	FUNC9(); /* drain writebuffer */

	retry = AC97_RW_RETRIES;
	do {
		FUNC6(&pscdata->lock);

		FUNC4(FUNC2(reg) | (val & 0xffff),
			  FUNC0(pscdata));
		FUNC9(); /* drain writebuffer */

		tmo = 20;
		do {
			FUNC8(21);
			if (FUNC3(FUNC1(pscdata)) & PSC_AC97EVNT_CD)
				break;
		} while (--tmo);

		FUNC4(PSC_AC97EVNT_CD, FUNC1(pscdata));
		FUNC9(); /* drain writebuffer */

		FUNC7(&pscdata->lock);
	} while (--retry && !tmo);
}