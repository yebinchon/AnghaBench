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
struct wm9712_priv {int /*<<< orphan*/  ac97; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM9712_VENDOR_ID ; 
 int /*<<< orphan*/  WM9712_VENDOR_ID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct wm9712_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct wm9712_priv *wm9712 = FUNC3(component);
	int ret;

	ret = FUNC0(wm9712->ac97, true, WM9712_VENDOR_ID,
		WM9712_VENDOR_ID_MASK);
	if (ret < 0)
		return ret;

	FUNC2(component, SND_SOC_BIAS_STANDBY);

	if (ret == 0)
		FUNC1(component);

	return ret;
}