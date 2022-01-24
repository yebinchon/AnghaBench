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
struct snd_ice1712 {int dummy; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE1712_EWX2496_RW ; 
 int /*<<< orphan*/  ICE1712_EWX2496_SERIAL_CLOCK ; 
 int ICE1712_EWX2496_SERIAL_DATA ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_WRITE_MASK ; 
 int FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct snd_i2c_bus *bus, int ack)
{
	struct snd_ice1712 *ice = bus->private_data;
	int bit;
	/* set RW pin to low */
	FUNC1(ice, ICE1712_IREG_GPIO_WRITE_MASK, ~ICE1712_EWX2496_RW);
	FUNC1(ice, ICE1712_IREG_GPIO_DATA, 0);
	if (ack)
		FUNC2(5);
	bit = FUNC0(ice, ICE1712_IREG_GPIO_DATA) & ICE1712_EWX2496_SERIAL_DATA ? 1 : 0;
	/* set RW pin to high */
	FUNC1(ice, ICE1712_IREG_GPIO_DATA, ICE1712_EWX2496_RW);
	/* reset write mask */
	FUNC1(ice, ICE1712_IREG_GPIO_WRITE_MASK, ~ICE1712_EWX2496_SERIAL_CLOCK);
	return bit;
}