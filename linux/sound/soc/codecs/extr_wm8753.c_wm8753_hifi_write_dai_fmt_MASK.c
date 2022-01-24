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
struct wm8753_priv {int dai_func; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 struct wm8753_priv* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int) ; 
 int FUNC2 (struct snd_soc_component*,unsigned int) ; 
 int FUNC3 (struct snd_soc_component*,unsigned int) ; 
 int FUNC4 (struct snd_soc_component*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
		unsigned int fmt)
{
	struct wm8753_priv *wm8753 = FUNC0(component);
	int ret = 0;

	switch (wm8753->dai_func) {
	case 0:
		ret = FUNC2(component, fmt);
		break;
	case 1:
		ret = FUNC3(component, fmt);
		break;
	case 2:
	case 3:
		ret = FUNC4(component, fmt);
		break;
	default:
		 break;
	}
	if (ret)
		return ret;

	return FUNC1(component, fmt);
}