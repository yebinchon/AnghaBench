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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAS571X_SYS_CTRL_2_REG ; 
 int /*<<< orphan*/  TAS571X_SYS_CTRL_2_SDN_MASK ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	u8 sysctl2;
	int ret;

	sysctl2 = mute ? TAS571X_SYS_CTRL_2_SDN_MASK : 0;

	ret = FUNC0(component,
			    TAS571X_SYS_CTRL_2_REG,
		     TAS571X_SYS_CTRL_2_SDN_MASK,
		     sysctl2);
	FUNC1(1000, 2000);

	return ret;
}