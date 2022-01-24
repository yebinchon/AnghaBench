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
struct soc_enum {scalar_t__ reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int WCD9335_CDC_RX0_RX_PATH_CFG0 ; 
 scalar_t__ WCD9335_CDC_RX0_RX_PATH_SEC0 ; 
 int WCD9335_CDC_RX1_RX_PATH_CFG0 ; 
 scalar_t__ WCD9335_CDC_RX1_RX_PATH_SEC0 ; 
 int WCD9335_CDC_RX2_RX_PATH_CFG0 ; 
 scalar_t__ WCD9335_CDC_RX2_RX_PATH_SEC0 ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kc,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct soc_enum *e = (struct soc_enum *)kc->private_value;
	struct snd_soc_component *component;
	int reg, val;

	component = FUNC1(kc);
	val = ucontrol->value.enumerated.item[0];

	if (e->reg == WCD9335_CDC_RX0_RX_PATH_SEC0)
		reg = WCD9335_CDC_RX0_RX_PATH_CFG0;
	else if (e->reg == WCD9335_CDC_RX1_RX_PATH_SEC0)
		reg = WCD9335_CDC_RX1_RX_PATH_CFG0;
	else if (e->reg == WCD9335_CDC_RX2_RX_PATH_SEC0)
		reg = WCD9335_CDC_RX2_RX_PATH_CFG0;
	else
		return -EINVAL;

	/* Set Look Ahead Delay */
	FUNC0(component, reg,
				WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK,
				val ? WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN : 0);
	/* Set DEM INP Select */
	return FUNC2(kc, ucontrol);
}