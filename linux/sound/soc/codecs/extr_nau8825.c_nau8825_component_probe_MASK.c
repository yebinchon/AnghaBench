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
struct nau8825 {struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 struct nau8825* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct nau8825 *nau8825 = FUNC1(component);
	struct snd_soc_dapm_context *dapm = FUNC0(component);

	nau8825->dapm = dapm;

	return 0;
}