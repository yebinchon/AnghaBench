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
typedef  size_t u16 ;
struct wcd9335_codec {int* prim_int_users; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WCD9335_CDC_RX_CLK_DISABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_CLK_ENABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_CLK_EN_MASK ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_ENABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_EN_MASK ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_RESET_DISABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_RESET_ENABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_RESET_MASK ; 
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int,int) ; 
 int FUNC3 (size_t,size_t*) ; 

__attribute__((used)) static int FUNC4(
						struct snd_soc_component *comp,
						u16 reg, int event)
{
	struct wcd9335_codec *wcd = FUNC0(comp->dev);
	u16 ind = 0;
	int prim_int_reg = FUNC3(reg, &ind);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		wcd->prim_int_users[ind]++;
		if (wcd->prim_int_users[ind] == 1) {
			FUNC1(comp, prim_int_reg,
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
					WCD9335_CDC_RX_PGA_MUTE_ENABLE);
			FUNC2(comp, prim_int_reg, event);
			FUNC1(comp, prim_int_reg,
					WCD9335_CDC_RX_CLK_EN_MASK,
					WCD9335_CDC_RX_CLK_ENABLE);
		}

		if ((reg != prim_int_reg) &&
			((FUNC0(comp, prim_int_reg)) &
			 WCD9335_CDC_RX_PGA_MUTE_EN_MASK))
			FUNC1(comp, reg,
						WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
						WCD9335_CDC_RX_PGA_MUTE_ENABLE);
		break;
	case SND_SOC_DAPM_POST_PMD:
		wcd->prim_int_users[ind]--;
		if (wcd->prim_int_users[ind] == 0) {
			FUNC1(comp, prim_int_reg,
					WCD9335_CDC_RX_CLK_EN_MASK,
					WCD9335_CDC_RX_CLK_DISABLE);
			FUNC1(comp, prim_int_reg,
					WCD9335_CDC_RX_RESET_MASK,
					WCD9335_CDC_RX_RESET_ENABLE);
			FUNC1(comp, prim_int_reg,
					WCD9335_CDC_RX_RESET_MASK,
					WCD9335_CDC_RX_RESET_DISABLE);
			FUNC2(comp, prim_int_reg, event);
		}
		break;
	};

	return 0;
}