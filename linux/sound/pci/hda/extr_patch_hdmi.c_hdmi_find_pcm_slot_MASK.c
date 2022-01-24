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
struct hdmi_spec_per_pin {int pin_nid_idx; } ;
struct hdmi_spec {int num_nids; int pcm_used; int /*<<< orphan*/  pcm_bitmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct hdmi_spec *spec,
				struct hdmi_spec_per_pin *per_pin)
{
	int i;

	/* try the prefer PCM */
	if (!FUNC0(per_pin->pin_nid_idx, &spec->pcm_bitmap))
		return per_pin->pin_nid_idx;

	/* have a second try; check the "reserved area" over num_pins */
	for (i = spec->num_nids; i < spec->pcm_used; i++) {
		if (!FUNC0(i, &spec->pcm_bitmap))
			return i;
	}

	/* the last try; check the empty slots in pins */
	for (i = 0; i < spec->num_nids; i++) {
		if (!FUNC0(i, &spec->pcm_bitmap))
			return i;
	}
	return -EBUSY;
}