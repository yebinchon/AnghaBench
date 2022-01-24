#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int HDSPM_MAX_CHANNELS ; 
 int FUNC0 (struct hdspm*,int,int) ; 
 int FUNC1 (struct hdspm*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdspm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdspm*) ; 
 struct hdspm* FUNC5 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC5(kcontrol);
	int change;
	int source;
	int destination;
	int gain;

	if (!FUNC4(hdspm))
		return -EBUSY;

	source = ucontrol->value.integer.value[0];
	destination = ucontrol->value.integer.value[1];

	if (source < 0 || source >= 2 * HDSPM_MAX_CHANNELS)
		return -1;
	if (destination < 0 || destination >= HDSPM_MAX_CHANNELS)
		return -1;

	gain = ucontrol->value.integer.value[2];

	FUNC6(&hdspm->lock);

	if (source >= HDSPM_MAX_CHANNELS)
		change = gain != FUNC1(hdspm, destination,
						    source -
						    HDSPM_MAX_CHANNELS);
	else
		change = gain != FUNC0(hdspm, destination,
						    source);

	if (change) {
		if (source >= HDSPM_MAX_CHANNELS)
			FUNC3(hdspm, destination,
					    source - HDSPM_MAX_CHANNELS,
					    gain);
		else
			FUNC2(hdspm, destination, source,
					    gain);
	}
	FUNC7(&hdspm->lock);

	return change;
}