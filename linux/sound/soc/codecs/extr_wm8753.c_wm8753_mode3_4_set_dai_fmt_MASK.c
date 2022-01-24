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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8753_CLOCK ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct snd_soc_component*,unsigned int) ; 
 int FUNC3 (struct snd_soc_component*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
		unsigned int fmt)
{
	u16 clock;

	/* set clk source as mclk */
	clock = FUNC0(component, WM8753_CLOCK) & 0xfffb;
	FUNC1(component, WM8753_CLOCK, clock | 0x4);

	if (FUNC2(component, fmt) < 0)
		return -EINVAL;
	return FUNC3(component, fmt);
}