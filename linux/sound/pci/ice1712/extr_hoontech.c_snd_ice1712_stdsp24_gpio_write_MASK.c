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

/* Variables and functions */
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 unsigned char ICE1712_STDSP24_CLOCK_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, unsigned char byte)
{
	byte |= ICE1712_STDSP24_CLOCK_BIT;
	FUNC1(100);
	FUNC0(ice, ICE1712_IREG_GPIO_DATA, byte);
	byte &= ~ICE1712_STDSP24_CLOCK_BIT;
	FUNC1(100);
	FUNC0(ice, ICE1712_IREG_GPIO_DATA, byte);
	byte |= ICE1712_STDSP24_CLOCK_BIT;
	FUNC1(100);
	FUNC0(ice, ICE1712_IREG_GPIO_DATA, byte);
}