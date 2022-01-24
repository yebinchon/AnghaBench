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
struct snd_soc_dapm_widget {int /*<<< orphan*/  reg; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct pm8916_wcd_analog_priv {int /*<<< orphan*/  micbias2_cap_mode; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pm8916_wcd_analog_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct
						  snd_soc_dapm_widget
						  *w, struct snd_kcontrol
						  *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct pm8916_wcd_analog_priv *wcd = FUNC1(component);

	return FUNC0(component, event, w->reg,
						     wcd->micbias2_cap_mode);

}