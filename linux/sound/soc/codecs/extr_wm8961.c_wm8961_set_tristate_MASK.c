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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8961_ADDITIONAL_CONTROL_2 ; 
 int /*<<< orphan*/  WM8961_TRIS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int tristate)
{
	struct snd_soc_component *component = dai->component;
	u16 reg = FUNC0(component, WM8961_ADDITIONAL_CONTROL_2);

	if (tristate)
		reg |= WM8961_TRIS;
	else
		reg &= ~WM8961_TRIS;

	return FUNC1(component, WM8961_ADDITIONAL_CONTROL_2, reg);
}