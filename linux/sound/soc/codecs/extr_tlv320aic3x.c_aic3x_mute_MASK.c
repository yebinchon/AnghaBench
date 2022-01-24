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
typedef  int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDAC_VOL ; 
 int MUTE_ON ; 
 int /*<<< orphan*/  RDAC_VOL ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	u8 ldac_reg = FUNC0(component, LDAC_VOL) & ~MUTE_ON;
	u8 rdac_reg = FUNC0(component, RDAC_VOL) & ~MUTE_ON;

	if (mute) {
		FUNC1(component, LDAC_VOL, ldac_reg | MUTE_ON);
		FUNC1(component, RDAC_VOL, rdac_reg | MUTE_ON);
	} else {
		FUNC1(component, LDAC_VOL, ldac_reg);
		FUNC1(component, RDAC_VOL, rdac_reg);
	}

	return 0;
}