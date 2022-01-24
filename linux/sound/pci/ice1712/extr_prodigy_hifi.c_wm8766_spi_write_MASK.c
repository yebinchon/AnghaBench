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
struct TYPE_2__ {int write_mask; int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;

/* Variables and functions */
 int WM8766_SPI_CLK ; 
 int WM8766_SPI_MD ; 
 int WM8766_SPI_ML ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice, unsigned int reg,
			     unsigned int data)
{
	unsigned int block;

	FUNC1(ice, WM8766_SPI_MD|
					WM8766_SPI_CLK|WM8766_SPI_ML);
	FUNC2(ice, ~(WM8766_SPI_MD|
					WM8766_SPI_CLK|WM8766_SPI_ML));
	/* latch must be low when writing */
	FUNC0(ice, WM8766_SPI_ML, 0);
	block = (reg << 9) | (data & 0x1ff);
	FUNC4(ice, block); /* REGISTER ADDRESS */
	/* release latch */
	FUNC0(ice, WM8766_SPI_ML, 1);
	FUNC3(1);
	/* restore */
	FUNC2(ice, ice->gpio.write_mask);
	FUNC1(ice, ice->gpio.direction);
}