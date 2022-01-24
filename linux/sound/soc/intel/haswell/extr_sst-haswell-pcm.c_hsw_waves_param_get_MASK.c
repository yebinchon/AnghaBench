#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sst_hsw {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {struct sst_hsw* hsw; } ;

/* Variables and functions */
 struct hsw_priv_data* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct sst_hsw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct hsw_priv_data *pdata = FUNC0(component);
	struct sst_hsw *hsw = pdata->hsw;

	/* return a matching line from param buffer */
	return FUNC2(hsw, ucontrol->value.bytes.data);
}