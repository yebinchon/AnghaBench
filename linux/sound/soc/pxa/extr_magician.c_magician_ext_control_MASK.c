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
struct snd_soc_dapm_context {int dummy; } ;

/* Variables and functions */
#define  MAGICIAN_MIC 129 
#define  MAGICIAN_MIC_EXT 128 
 scalar_t__ magician_hp_switch ; 
 int magician_in_sel ; 
 scalar_t__ magician_spk_switch ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_dapm_context *dapm)
{

	FUNC2(dapm);

	if (magician_spk_switch)
		FUNC1(dapm, "Speaker");
	else
		FUNC0(dapm, "Speaker");
	if (magician_hp_switch)
		FUNC1(dapm, "Headphone Jack");
	else
		FUNC0(dapm, "Headphone Jack");

	switch (magician_in_sel) {
	case MAGICIAN_MIC:
		FUNC0(dapm, "Headset Mic");
		FUNC1(dapm, "Call Mic");
		break;
	case MAGICIAN_MIC_EXT:
		FUNC0(dapm, "Call Mic");
		FUNC1(dapm, "Headset Mic");
		break;
	}

	FUNC4(dapm);

	FUNC3(dapm);
}