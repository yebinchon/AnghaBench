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
struct snd_soc_acpi_mach {struct snd_soc_acpi_mach* (* machine_quirk ) (struct snd_soc_acpi_mach*) ;scalar_t__* id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_acpi_mach* FUNC1 (struct snd_soc_acpi_mach*) ; 

struct snd_soc_acpi_mach *
FUNC2(struct snd_soc_acpi_mach *machines)
{
	struct snd_soc_acpi_mach *mach;
	struct snd_soc_acpi_mach *mach_alt;

	for (mach = machines; mach->id[0]; mach++) {
		if (FUNC0(mach->id, NULL, -1)) {
			if (mach->machine_quirk) {
				mach_alt = mach->machine_quirk(mach);
				if (!mach_alt)
					continue; /* not full match, ignore */
				mach = mach_alt;
			}

			return mach;
		}
	}
	return NULL;
}