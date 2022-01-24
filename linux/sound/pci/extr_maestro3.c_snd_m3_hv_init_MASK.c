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
struct snd_m3 {unsigned long iobase; int /*<<< orphan*/  is_omnibook; } ;

/* Variables and functions */
 scalar_t__ GPIO_DATA ; 
 scalar_t__ GPIO_DIRECTION ; 
 scalar_t__ GPIO_MASK ; 
 int GPI_VOL_DOWN ; 
 int GPI_VOL_UP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct snd_m3 *chip)
{
	unsigned long io = chip->iobase;
	u16 val = GPI_VOL_DOWN | GPI_VOL_UP;

	if (!chip->is_omnibook)
		return;

	/*
	 * Volume buttons on some HP OmniBook laptops
	 * require some GPIO magic to work correctly.
	 */
	FUNC1(0xffff, io + GPIO_MASK);
	FUNC1(0x0000, io + GPIO_DATA);

	FUNC1(~val, io + GPIO_MASK);
	FUNC1(FUNC0(io + GPIO_DIRECTION) & ~val, io + GPIO_DIRECTION);
	FUNC1(val, io + GPIO_MASK);

	FUNC1(0xffff, io + GPIO_MASK);
}