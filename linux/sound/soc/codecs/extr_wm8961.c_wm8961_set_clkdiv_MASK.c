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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8961_AUDIO_INTERFACE_2 ; 
#define  WM8961_BCLK 129 
 int WM8961_BCLKDIV_MASK ; 
 int /*<<< orphan*/  WM8961_CLOCKING2 ; 
#define  WM8961_LRCLK 128 
 int WM8961_LRCLK_RATE_MASK ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int div_id, int div)
{
	struct snd_soc_component *component = dai->component;
	u16 reg;

	switch (div_id) {
	case WM8961_BCLK:
		reg = FUNC0(component, WM8961_CLOCKING2);
		reg &= ~WM8961_BCLKDIV_MASK;
		reg |= div;
		FUNC1(component, WM8961_CLOCKING2, reg);
		break;

	case WM8961_LRCLK:
		reg = FUNC0(component, WM8961_AUDIO_INTERFACE_2);
		reg &= ~WM8961_LRCLK_RATE_MASK;
		reg |= div;
		FUNC1(component, WM8961_AUDIO_INTERFACE_2, reg);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}