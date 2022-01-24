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
struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_context*,char*) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dapm_context *dapm = &rtd->card->dapm;

	/* Other pins NC */
	FUNC0(dapm, "HPOUT2P");
	FUNC0(dapm, "HPOUT2N");
	FUNC0(dapm, "SPKOUTLN");
	FUNC0(dapm, "SPKOUTLP");
	FUNC0(dapm, "SPKOUTRP");
	FUNC0(dapm, "SPKOUTRN");
	FUNC0(dapm, "LINEOUT1N");
	FUNC0(dapm, "LINEOUT1P");
	FUNC0(dapm, "LINEOUT2N");
	FUNC0(dapm, "LINEOUT2P");
	FUNC0(dapm, "IN1LP");
	FUNC0(dapm, "IN2LP:VXRN");
	FUNC0(dapm, "IN1RP");
	FUNC0(dapm, "IN2RP:VXRP");

	return 0;
}