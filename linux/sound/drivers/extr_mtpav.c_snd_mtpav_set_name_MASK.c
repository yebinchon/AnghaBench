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
struct snd_rawmidi_substream {int number; int /*<<< orphan*/  name; } ;
struct mtpav {int num_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct mtpav *chip,
			       struct snd_rawmidi_substream *substream)
{
	if (substream->number >= 0 && substream->number < chip->num_ports)
		FUNC0(substream->name, "MTP direct %d", (substream->number % chip->num_ports) + 1);
	else if (substream->number >= 8 && substream->number < chip->num_ports * 2)
		FUNC0(substream->name, "MTP remote %d", (substream->number % chip->num_ports) + 1);
	else if (substream->number == chip->num_ports * 2)
		FUNC1(substream->name, "MTP computer");
	else if (substream->number == chip->num_ports * 2 + 1)
		FUNC1(substream->name, "MTP ADAT");
	else
		FUNC1(substream->name, "MTP broadcast");
}