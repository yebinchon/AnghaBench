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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC0(component);

	FUNC2(dapm);
	FUNC1(dapm, "LDO");
	FUNC1(dapm, "micbias1");
	/* OVCD is unreliable when used with RCCLK as sysclk-source */
	FUNC1(dapm, "Platform Clock");
	FUNC4(dapm);
	FUNC3(dapm);
}