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
struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;

/* Variables and functions */
 unsigned int AUREON_CS8415_CS ; 
 unsigned int AUREON_SPI_CLK ; 
 unsigned int AUREON_SPI_MOSI ; 
 unsigned int AUREON_WM_CS ; 
 unsigned int AUREON_WM_RW ; 
 unsigned int PRODIGY_SPI_CLK ; 
 unsigned int PRODIGY_SPI_MOSI ; 
 unsigned int PRODIGY_WM_CS ; 
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71LT ; 
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71XT ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_ice1712 *ice, unsigned int cs, unsigned int data, int bits)
{
	unsigned int tmp;
	int i;
	unsigned int mosi, clk;

	tmp = FUNC0(ice);

	if (ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71LT ||
	    ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71XT) {
		FUNC1(ice, ~(PRODIGY_SPI_MOSI|PRODIGY_SPI_CLK|PRODIGY_WM_CS));
		mosi = PRODIGY_SPI_MOSI;
		clk = PRODIGY_SPI_CLK;
	} else {
		FUNC1(ice, ~(AUREON_WM_RW|AUREON_SPI_MOSI|AUREON_SPI_CLK|
						 AUREON_WM_CS|AUREON_CS8415_CS));
		mosi = AUREON_SPI_MOSI;
		clk = AUREON_SPI_CLK;

		tmp |= AUREON_WM_RW;
	}

	tmp &= ~cs;
	FUNC2(ice, tmp);
	FUNC3(1);

	for (i = bits - 1; i >= 0; i--) {
		tmp &= ~clk;
		FUNC2(ice, tmp);
		FUNC3(1);
		if (data & (1 << i))
			tmp |= mosi;
		else
			tmp &= ~mosi;
		FUNC2(ice, tmp);
		FUNC3(1);
		tmp |= clk;
		FUNC2(ice, tmp);
		FUNC3(1);
	}

	tmp &= ~clk;
	tmp |= cs;
	FUNC2(ice, tmp);
	FUNC3(1);
	tmp |= clk;
	FUNC2(ice, tmp);
	FUNC3(1);
}