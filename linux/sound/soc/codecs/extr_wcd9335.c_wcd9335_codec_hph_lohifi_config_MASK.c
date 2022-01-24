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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WCD9335_HPH_CNP_WG_CTL ; 
 int WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK ; 
 int WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000 ; 
 int WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500 ; 
 int /*<<< orphan*/  WCD9335_HPH_PA_CTL1 ; 
 int /*<<< orphan*/  WCD9335_HPH_PA_CTL2 ; 
 int WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE ; 
 int WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE ; 
 int WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK ; 
 int WCD9335_HPH_PA_GM3_IB_SCALE_MASK ; 
 int /*<<< orphan*/  WCD9335_RX_BIAS_HPH_PA ; 
 int WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK ; 
 int /*<<< orphan*/  WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2 ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *comp,
					  int event)
{
	if (FUNC1(event)) {
		FUNC2(comp, WCD9335_RX_BIAS_HPH_PA,
					WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK,
					0x06);
		FUNC2(comp,
					WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2,
					0xF0, 0x40);
		FUNC2(comp, WCD9335_HPH_CNP_WG_CTL,
				WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK,
				WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000);
		FUNC2(comp, WCD9335_HPH_PA_CTL2,
				WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK,
				WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE);
		FUNC2(comp, WCD9335_HPH_PA_CTL1,
				WCD9335_HPH_PA_GM3_IB_SCALE_MASK,
				0x0C);
		FUNC4(comp, 0x11);
	}

	if (FUNC0(event)) {
		FUNC2(comp, WCD9335_HPH_PA_CTL2,
			WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK,
			WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE);
		FUNC2(comp, WCD9335_HPH_CNP_WG_CTL,
				WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK,
				WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500);
		FUNC3(comp, WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2,
					0x8A);
		FUNC2(comp, WCD9335_RX_BIAS_HPH_PA,
					WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK,
					0x0A);
	}
}