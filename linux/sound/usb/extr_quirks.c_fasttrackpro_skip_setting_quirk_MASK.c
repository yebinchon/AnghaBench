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
 int MAUDIO_SET_24B ; 
 int MAUDIO_SET_96K ; 
 int MAUDIO_SET_DI ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_audio*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_usb_audio *chip,
					   int iface, int altno)
{
	/* Reset ALL ifaces to 0 altsetting.
	 * Call it for every possible altsetting of every interface.
	 */
	FUNC1(chip->dev, iface, 0);

	/* possible configuration where both inputs and only one output is
	 *used is not supported by the current setup
	 */
	if (chip->setup & (MAUDIO_SET | MAUDIO_SET_24B)) {
		if (chip->setup & MAUDIO_SET_96K) {
			if (altno != 3 && altno != 6)
				return 1;
		} else if (chip->setup & MAUDIO_SET_DI) {
			if (iface == 4)
				return 1; /* no analog input */
			if (altno != 2 && altno != 5)
				return 1; /* enable only altsets 2 and 5 */
		} else {
			if (iface == 5)
				return 1; /* disable digialt input */
			if (altno != 2 && altno != 5)
				return 1; /* enalbe only altsets 2 and 5 */
		}
	} else {
		/* keep only 16-Bit mode */
		if (altno != 1)
			return 1;
	}

	FUNC0(chip,
		    "using altsetting %d for interface %d config %d\n",
		    altno, iface, chip->setup);
	return 0; /* keep this altsetting */
}