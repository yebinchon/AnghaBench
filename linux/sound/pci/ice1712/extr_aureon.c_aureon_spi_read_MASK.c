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
 unsigned int AUREON_CS8415_CS ; 
 unsigned int AUREON_SPI_CLK ; 
 unsigned int AUREON_SPI_MISO ; 
 unsigned int AUREON_SPI_MOSI ; 
 unsigned int AUREON_WM_CS ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ice1712 *ice, unsigned int cs,
		unsigned int data, int bits, unsigned char *buffer, int size)
{
	int i, j;
	unsigned int tmp;

	tmp = (FUNC0(ice) & ~AUREON_SPI_CLK) | AUREON_CS8415_CS|AUREON_WM_CS;
	FUNC1(ice, tmp);
	tmp &= ~cs;
	FUNC1(ice, tmp);
	FUNC2(1);

	for (i = bits-1; i >= 0; i--) {
		if (data & (1 << i))
			tmp |= AUREON_SPI_MOSI;
		else
			tmp &= ~AUREON_SPI_MOSI;
		FUNC1(ice, tmp);
		FUNC2(1);

		tmp |= AUREON_SPI_CLK;
		FUNC1(ice, tmp);
		FUNC2(1);

		tmp &= ~AUREON_SPI_CLK;
		FUNC1(ice, tmp);
		FUNC2(1);
	}

	for (j = 0; j < size; j++) {
		unsigned char outdata = 0;
		for (i = 7; i >= 0; i--) {
			tmp = FUNC0(ice);
			outdata <<= 1;
			outdata |= (tmp & AUREON_SPI_MISO) ? 1 : 0;
			FUNC2(1);

			tmp |= AUREON_SPI_CLK;
			FUNC1(ice, tmp);
			FUNC2(1);

			tmp &= ~AUREON_SPI_CLK;
			FUNC1(ice, tmp);
			FUNC2(1);
		}
		buffer[j] = outdata;
	}

	tmp |= cs;
	FUNC1(ice, tmp);
}