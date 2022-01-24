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
struct TYPE_2__ {unsigned int (* get_dir ) (struct snd_ice1712*) ;unsigned int (* get_data ) (struct snd_ice1712*) ;int /*<<< orphan*/  (* set_dir ) (struct snd_ice1712*,unsigned int) ;int /*<<< orphan*/  (* set_mask ) (struct snd_ice1712*,int) ;int /*<<< orphan*/  (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;

/* Variables and functions */
 int AK4620_ADDR ; 
 unsigned int GPIO_D4_SPI_CDTO ; 
 unsigned int GPIO_D5_SPI_CCLK ; 
 unsigned int GPIO_SPI_ALL ; 
 unsigned int GPIO_SPI_CSN0 ; 
 unsigned int GPIO_SPI_CSN1 ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*,unsigned int) ; 
 unsigned int FUNC7 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct snd_akm4xxx *ak, int chip,
		unsigned char addr, unsigned char data)
{
	unsigned int tmp, orig_dir;
	int idx;
	unsigned int addrdata;
	struct snd_ice1712 *ice = ak->private_data[0];

	if (FUNC0(chip < 0 || chip >= 4))
		return;
	/*dev_dbg(ice->card->dev, "Writing to AK4620: chip=%d, addr=0x%x,
	  data=0x%x\n", chip, addr, data);*/
	orig_dir = ice->gpio.get_dir(ice);
	ice->gpio.set_dir(ice, orig_dir | GPIO_SPI_ALL);
	/* set mask - only SPI bits */
	ice->gpio.set_mask(ice, ~GPIO_SPI_ALL);

	tmp = ice->gpio.get_data(ice);
	/* high all */
	tmp |= GPIO_SPI_ALL;
	ice->gpio.set_data(ice, tmp);
	FUNC13(100);
	/* drop chip select */
	if (chip)
		/* CODEC 1 */
		tmp &= ~GPIO_SPI_CSN1;
	else
		tmp &= ~GPIO_SPI_CSN0;
	ice->gpio.set_data(ice, tmp);
	FUNC13(100);

	/* build I2C address + data byte */
	addrdata = (AK4620_ADDR << 6) | 0x20 | (addr & 0x1f);
	addrdata = (addrdata << 8) | data;
	for (idx = 15; idx >= 0; idx--) {
		/* drop clock */
		tmp &= ~GPIO_D5_SPI_CCLK;
		ice->gpio.set_data(ice, tmp);
		FUNC13(100);
		/* set data */
		if (addrdata & (1 << idx))
			tmp |= GPIO_D4_SPI_CDTO;
		else
			tmp &= ~GPIO_D4_SPI_CDTO;
		ice->gpio.set_data(ice, tmp);
		FUNC13(100);
		/* raise clock */
		tmp |= GPIO_D5_SPI_CCLK;
		ice->gpio.set_data(ice, tmp);
		FUNC13(100);
	}
	/* all back to 1 */
	tmp |= GPIO_SPI_ALL;
	ice->gpio.set_data(ice, tmp);
	FUNC13(100);

	/* return all gpios to non-writable */
	ice->gpio.set_mask(ice, 0xffffff);
	/* restore GPIOs direction */
	ice->gpio.set_dir(ice, orig_dir);
}