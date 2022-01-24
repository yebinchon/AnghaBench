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
struct snd_soc_dapm_widget {struct snd_soc_dai* priv; } ;
struct snd_soc_dai {struct g12a_tohdmitx_input* playback_dma_data; } ;
struct g12a_tohdmitx_input {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_soc_dapm_widget*) ; 

__attribute__((used)) static struct g12a_tohdmitx_input *
FUNC2(struct snd_soc_dapm_widget *w)
{
	struct snd_soc_dapm_widget *in =
		FUNC1(w);
	struct snd_soc_dai *dai;

	if (FUNC0(!in))
		return NULL;

	dai = in->priv;

	return dai->playback_dma_data;
}