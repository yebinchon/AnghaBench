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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8994_GPIO_3 ; 
 int /*<<< orphan*/  WM8994_GPIO_4 ; 
 int /*<<< orphan*/  WM8994_GPIO_5 ; 
 int WM8994_GPN_PD ; 
 int WM8994_GPN_PU ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;

	/* Disable the pulls on the AIF if we're using it to save power. */
	FUNC0(component, WM8994_GPIO_3,
			    WM8994_GPN_PU | WM8994_GPN_PD, 0);
	FUNC0(component, WM8994_GPIO_4,
			    WM8994_GPN_PU | WM8994_GPN_PD, 0);
	FUNC0(component, WM8994_GPIO_5,
			    WM8994_GPN_PU | WM8994_GPN_PD, 0);

	return 0;
}