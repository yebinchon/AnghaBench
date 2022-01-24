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
struct snd_akm4xxx {struct snd_ice1712** private_data; scalar_t__* private_value; } ;
struct snd_ak4xxx_private {unsigned int add_flags; unsigned int mask_flags; unsigned int cs_mask; unsigned int cs_addr; int caddr; unsigned int clk_mask; unsigned int data_mask; unsigned int cs_none; scalar_t__ cif; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_akm4xxx *ak, int chip,
				      unsigned char addr, unsigned char data)
{
	unsigned int tmp;
	int idx;
	unsigned int addrdata;
	struct snd_ak4xxx_private *priv = (void *)ak->private_value[0];
	struct snd_ice1712 *ice = ak->private_data[0];

	if (FUNC0(chip < 0 || chip >= 4))
		return;

	tmp = FUNC1(ice);
	tmp |= priv->add_flags;
	tmp &= ~priv->mask_flags;
	if (priv->cs_mask == priv->cs_addr) {
		if (priv->cif) {
			tmp |= priv->cs_mask; /* start without chip select */
		}  else {
			tmp &= ~priv->cs_mask; /* chip select low */
			FUNC2(ice, tmp);
			FUNC3(1);
		}
	} else {
		/* doesn't handle cf=1 yet */
		tmp &= ~priv->cs_mask;
		tmp |= priv->cs_addr;
		FUNC2(ice, tmp);
		FUNC3(1);
	}

	/* build I2C address + data byte */
	addrdata = (priv->caddr << 6) | 0x20 | (addr & 0x1f);
	addrdata = (addrdata << 8) | data;
	for (idx = 15; idx >= 0; idx--) {
		/* drop clock */
		tmp &= ~priv->clk_mask;
		FUNC2(ice, tmp);
		FUNC3(1);
		/* set data */
		if (addrdata & (1 << idx))
			tmp |= priv->data_mask;
		else
			tmp &= ~priv->data_mask;
		FUNC2(ice, tmp);
		FUNC3(1);
		/* raise clock */
		tmp |= priv->clk_mask;
		FUNC2(ice, tmp);
		FUNC3(1);
	}

	if (priv->cs_mask == priv->cs_addr) {
		if (priv->cif) {
			/* assert a cs pulse to trigger */
			tmp &= ~priv->cs_mask;
			FUNC2(ice, tmp);
			FUNC3(1);
		}
		tmp |= priv->cs_mask; /* chip select high to trigger */
	} else {
		tmp &= ~priv->cs_mask;
		tmp |= priv->cs_none; /* deselect address */
	}
	FUNC2(ice, tmp);
	FUNC3(1);
}