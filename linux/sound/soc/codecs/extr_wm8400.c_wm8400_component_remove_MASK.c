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
 int WM8400_CODEC_ENA ; 
 int /*<<< orphan*/  WM8400_POWER_MANAGEMENT_1 ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void  FUNC2(struct snd_soc_component *component)
{
	u16 reg;

	reg = FUNC0(component, WM8400_POWER_MANAGEMENT_1);
	FUNC1(component, WM8400_POWER_MANAGEMENT_1,
		     reg & (~WM8400_CODEC_ENA));
}