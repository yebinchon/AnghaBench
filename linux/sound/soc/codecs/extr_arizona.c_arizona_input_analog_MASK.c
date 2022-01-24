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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int ARIZONA_IN1L_CONTROL ; 
 unsigned int ARIZONA_IN1_MODE_MASK ; 
 unsigned int FUNC0 (struct snd_soc_component*,unsigned int) ; 

bool FUNC1(struct snd_soc_component *component, int shift)
{
	unsigned int reg = ARIZONA_IN1L_CONTROL + ((shift / 2) * 8);
	unsigned int val = FUNC0(component, reg);

	return !(val & ARIZONA_IN1_MODE_MASK);
}