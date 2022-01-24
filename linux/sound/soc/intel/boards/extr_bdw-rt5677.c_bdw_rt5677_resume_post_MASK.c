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
struct snd_soc_card {int dummy; } ;
struct bdw_rt5677_priv {scalar_t__ component; } ;

/* Variables and functions */
 struct bdw_rt5677_priv* FUNC0 (struct snd_soc_card*) ; 
 struct snd_soc_dapm_context* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_card *card)
{
	struct bdw_rt5677_priv *bdw_rt5677 = FUNC0(card);
	struct snd_soc_dapm_context *dapm;

	if (bdw_rt5677->component) {
		dapm = FUNC1(bdw_rt5677->component);
		FUNC2(dapm, "MICBIAS1");
	}
	return 0;
}