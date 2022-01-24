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
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  PSC_AC97RST_SNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC2 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97)
{
	struct au1xpsc_audio_data *pscdata = FUNC2(ac97);

	FUNC1(PSC_AC97RST_SNC, FUNC0(pscdata));
	FUNC4(); /* drain writebuffer */
	FUNC3(10);
	FUNC1(0, FUNC0(pscdata));
	FUNC4(); /* drain writebuffer */
}