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
struct snd_soc_dapm_widget_list {int num_widgets; struct snd_soc_dapm_widget** widgets; } ;
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {struct snd_soc_dapm_widget_list* wlist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_soc_dapm_widget_list* FUNC0 (struct snd_soc_dapm_widget_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dapm_kcontrol_data* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget_list*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  widgets ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_soc_dapm_widget *widget)
{
	struct dapm_kcontrol_data *data = FUNC1(kcontrol);
	struct snd_soc_dapm_widget_list *new_wlist;
	unsigned int n;

	if (data->wlist)
		n = data->wlist->num_widgets + 1;
	else
		n = 1;

	new_wlist = FUNC0(data->wlist,
			     FUNC2(new_wlist, widgets, n),
			     GFP_KERNEL);
	if (!new_wlist)
		return -ENOMEM;

	new_wlist->widgets[n - 1] = widget;
	new_wlist->num_widgets = n;

	data->wlist = new_wlist;

	return 0;
}