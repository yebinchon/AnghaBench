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
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct rt5645_priv {TYPE_1__* eq_param; } ;
struct rt5645_eq_param_s_be16 {void* val; void* reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int RT5645_HWEQ_NUM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 struct rt5645_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct rt5645_priv *rt5645 = FUNC2(component);
	struct rt5645_eq_param_s_be16 *eq_param =
		(struct rt5645_eq_param_s_be16 *)ucontrol->value.bytes.data;
	int i;

	for (i = 0; i < RT5645_HWEQ_NUM; i++) {
		eq_param[i].reg = FUNC0(rt5645->eq_param[i].reg);
		eq_param[i].val = FUNC0(rt5645->eq_param[i].val);
	}

	return 0;
}