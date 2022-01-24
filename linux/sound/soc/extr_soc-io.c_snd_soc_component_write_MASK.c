#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_1__* driver; scalar_t__ regmap; } ;
struct TYPE_2__ {int (* write ) (struct snd_soc_component*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (scalar_t__,unsigned int,unsigned int) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int,unsigned int) ; 

int FUNC2(struct snd_soc_component *component,
	unsigned int reg, unsigned int val)
{
	if (component->regmap)
		return FUNC0(component->regmap, reg, val);
	else if (component->driver->write)
		return component->driver->write(component, reg, val);
	else
		return -EIO;
}