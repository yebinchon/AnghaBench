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
 int FUNC0 (unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct snd_ice1712 *ice)
{
	int i;
	static unsigned short default_values[] = {
		0x100, 0x100, 0x100,
		0x100, 0x100, 0x100,
		0x000, 0x090, 0x000, 0x000,
		0x022, 0x022, 0x022,
		0x008, 0x0cf, 0x0cf, 0x07b, 0x000,
		0x032, 0x000, 0x0a6, 0x001, 0x001
	};

	FUNC6(ice, 0x17, 0x000); /* reset all */
	/* ADC and DAC interface is I2S 24bits mode */
 	/* The sample-rate are automatically changed */
	FUNC7(10);
	/* BUT my board can not do reset all, so I load all by manually. */
	for (i = 0; i < FUNC0(default_values); i++)
		FUNC6(ice, i, default_values[i]);

	FUNC3(ice, 0);
	FUNC1(ice, 0);
	FUNC2(ice, 0);
	FUNC4(ice, 0, 0);
	FUNC5(ice, 0, 0);

	/* head phone mute and power down */
	FUNC6(ice, 0x00, 0);
	FUNC6(ice, 0x01, 0);
	FUNC6(ice, 0x02, 0x100);
	FUNC6(ice, 0x0d, 0x080);
}