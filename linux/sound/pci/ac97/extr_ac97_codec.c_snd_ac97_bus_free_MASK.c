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
struct snd_ac97_bus {int /*<<< orphan*/  (* private_free ) (struct snd_ac97_bus*) ;struct snd_ac97_bus* pcms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ac97_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97_bus*) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97_bus *bus)
{
	if (bus) {
		FUNC1(bus);
		FUNC0(bus->pcms);
		if (bus->private_free)
			bus->private_free(bus);
		FUNC0(bus);
	}
	return 0;
}