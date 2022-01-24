#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct max98088_priv {struct max98088_cdata* dai; struct max98088_pdata* pdata; } ;
struct max98088_pdata {int eq_cfgcnt; } ;
struct max98088_cdata {int eq_sel; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 struct max98088_priv* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
                                struct snd_ctl_elem_value *ucontrol)
{
       struct snd_soc_component *component = FUNC4(kcontrol);
       struct max98088_priv *max98088 = FUNC3(component);
       struct max98088_pdata *pdata = max98088->pdata;
       int channel = FUNC0(component, kcontrol->id.name);
       struct max98088_cdata *cdata;
	int sel = ucontrol->value.enumerated.item[0];

       if (channel < 0)
	       return channel;

       cdata = &max98088->dai[channel];

       if (sel >= pdata->eq_cfgcnt)
               return -EINVAL;

       cdata->eq_sel = sel;

       switch (channel) {
       case 0:
               FUNC1(component);
               break;
       case 1:
               FUNC2(component);
               break;
       }

       return 0;
}