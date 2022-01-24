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
 int /*<<< orphan*/  WM8766_SPI_CLK ; 
 int /*<<< orphan*/  WM8766_SPI_MD ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, unsigned int data)
{
	int i;
	for (i = 0; i < 16; i++) {
		FUNC0(ice, WM8766_SPI_CLK, 0);
		FUNC1(1);
		FUNC0(ice, WM8766_SPI_MD, data & 0x8000);
		FUNC1(1);
		FUNC0(ice, WM8766_SPI_CLK, 1);
		FUNC1(1);
		data <<= 1;
	}
}