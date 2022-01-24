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
struct wcd9335_codec {int /*<<< orphan*/  sido_input_src; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIDO_SOURCE_RCO_BG ; 
 int /*<<< orphan*/  WCD9335_ANA_BUCK_CTL ; 
 int /*<<< orphan*/  WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_EXT ; 
 int /*<<< orphan*/  WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_MASK ; 
 int /*<<< orphan*/  WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_EXT ; 
 int /*<<< orphan*/  WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_MASK ; 
 int /*<<< orphan*/  WCD9335_ANA_RCO ; 
 int /*<<< orphan*/  WCD9335_ANA_RCO_BG_ENABLE ; 
 int /*<<< orphan*/  WCD9335_ANA_RCO_BG_EN_MASK ; 
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	struct wcd9335_codec *wcd = FUNC0(component->dev);

	FUNC1(component, WCD9335_ANA_RCO,
					WCD9335_ANA_RCO_BG_EN_MASK,
					WCD9335_ANA_RCO_BG_ENABLE);
	FUNC1(component, WCD9335_ANA_BUCK_CTL,
					WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_MASK,
					WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_EXT);
	/* 100us sleep needed after IREF settings */
	FUNC2(100, 110);
	FUNC1(component, WCD9335_ANA_BUCK_CTL,
					WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_MASK,
					WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_EXT);
	/* 100us sleep needed after VREF settings */
	FUNC2(100, 110);
	wcd->sido_input_src = SIDO_SOURCE_RCO_BG;
}