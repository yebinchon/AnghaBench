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
struct usb_interface {int dummy; } ;
struct snd_card {int dummy; } ;
struct hiface_chip {struct snd_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hiface_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 
 struct hiface_chip* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct hiface_chip *chip;
	struct snd_card *card;

	chip = FUNC3(intf);
	if (!chip)
		return;

	card = chip->card;

	/* Make sure that the userspace cannot create new request */
	FUNC1(card);

	FUNC0(chip);
	FUNC2(card);
}