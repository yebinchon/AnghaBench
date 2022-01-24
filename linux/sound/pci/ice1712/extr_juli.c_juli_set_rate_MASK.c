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
struct TYPE_2__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int /*<<< orphan*/  (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;

/* Variables and functions */
 unsigned int GPIO_RATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RATE ; 
 unsigned char VT1724_SPDIF_MASTER ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct snd_ice1712 *ice, unsigned int rate)
{
	unsigned int old, new;
	unsigned char val;

	old = ice->gpio.get_data(ice);
	new =  (old & ~GPIO_RATE_MASK) | FUNC1(rate);
	/* dev_dbg(ice->card->dev, "JULI - set_rate: old %x, new %x\n",
			old & GPIO_RATE_MASK,
			new & GPIO_RATE_MASK); */

	ice->gpio.set_data(ice, new);
	/* switching to external clock - supplied by external circuits */
	val = FUNC2(FUNC0(ice, RATE));
	FUNC3(val | VT1724_SPDIF_MASTER, FUNC0(ice, RATE));
}