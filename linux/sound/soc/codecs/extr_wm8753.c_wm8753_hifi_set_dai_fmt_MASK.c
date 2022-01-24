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
struct wm8753_priv {unsigned int hifi_fmt; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 struct wm8753_priv* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		unsigned int fmt)
{
	struct snd_soc_component *component = codec_dai->component;
	struct wm8753_priv *wm8753 = FUNC0(component);

	wm8753->hifi_fmt = fmt;

	return FUNC1(component, fmt);
}