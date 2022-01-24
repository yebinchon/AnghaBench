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
struct snd_emux_voice {TYPE_1__* port; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;
struct TYPE_2__ {scalar_t__* ctrls; } ;

/* Variables and functions */
 size_t EMUX_MD_REALTIME_PAN ; 
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ; 
 int SNDRV_EMUX_UPDATE_FMMOD ; 
 int SNDRV_EMUX_UPDATE_PAN ; 
 int SNDRV_EMUX_UPDATE_PITCH ; 
 int SNDRV_EMUX_UPDATE_Q ; 
 int SNDRV_EMUX_UPDATE_TREMFREQ ; 
 int SNDRV_EMUX_UPDATE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,struct snd_emux_voice*) ; 

__attribute__((used)) static void
FUNC7(struct snd_emux_voice *vp, int update)
{
	struct snd_emu8000 *hw;

	hw = vp->hw;
	if (update & SNDRV_EMUX_UPDATE_VOLUME)
		FUNC6(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_PITCH)
		FUNC4(hw, vp);
	if ((update & SNDRV_EMUX_UPDATE_PAN) &&
	    vp->port->ctrls[EMUX_MD_REALTIME_PAN])
		FUNC3(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_FMMOD)
		FUNC2(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_TREMFREQ)
		FUNC5(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_FM2FRQ2)
		FUNC1(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_Q)
		FUNC0(hw, vp);
}