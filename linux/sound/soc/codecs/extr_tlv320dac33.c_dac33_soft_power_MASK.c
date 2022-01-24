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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int DAC33_DACLPDNB ; 
 int DAC33_DACRPDNB ; 
 int DAC33_OSCPDNB ; 
 int DAC33_PDNALLB ; 
 int /*<<< orphan*/  DAC33_PWR_CTRL ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct snd_soc_component *component, int power)
{
	u8 reg;

	reg = FUNC0(component, DAC33_PWR_CTRL);
	if (power)
		reg |= DAC33_PDNALLB;
	else
		reg &= ~(DAC33_PDNALLB | DAC33_OSCPDNB |
			 DAC33_DACRPDNB | DAC33_DACLPDNB);
	FUNC1(component, DAC33_PWR_CTRL, reg);
}