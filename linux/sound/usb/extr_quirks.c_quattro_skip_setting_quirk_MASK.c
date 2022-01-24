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
struct snd_usb_audio {int setup; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAUDIO_SET ; 
 unsigned int MAUDIO_SET_16B_48K_NOTDI ; 
 unsigned int MAUDIO_SET_24B_48K_DI ; 
 unsigned int MAUDIO_SET_24B_48K_NOTDI ; 
 int MAUDIO_SET_96K ; 
 int MAUDIO_SET_COMPATIBLE ; 
 unsigned int MAUDIO_SET_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_audio*,char*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_usb_audio *chip,
				      int iface, int altno)
{
	/* Reset ALL ifaces to 0 altsetting.
	 * Call it for every possible altsetting of every interface.
	 */
	FUNC1(chip->dev, iface, 0);
	if (chip->setup & MAUDIO_SET) {
		if (chip->setup & MAUDIO_SET_COMPATIBLE) {
			if (iface != 1 && iface != 2)
				return 1; /* skip all interfaces but 1 and 2 */
		} else {
			unsigned int mask;
			if (iface == 1 || iface == 2)
				return 1; /* skip interfaces 1 and 2 */
			if ((chip->setup & MAUDIO_SET_96K) && altno != 1)
				return 1; /* skip this altsetting */
			mask = chip->setup & MAUDIO_SET_MASK;
			if (mask == MAUDIO_SET_24B_48K_DI && altno != 2)
				return 1; /* skip this altsetting */
			if (mask == MAUDIO_SET_24B_48K_NOTDI && altno != 3)
				return 1; /* skip this altsetting */
			if (mask == MAUDIO_SET_16B_48K_NOTDI && altno != 4)
				return 1; /* skip this altsetting */
		}
	}
	FUNC0(chip,
		    "using altsetting %d for interface %d config %d\n",
		    altno, iface, chip->setup);
	return 0; /* keep this altsetting */
}