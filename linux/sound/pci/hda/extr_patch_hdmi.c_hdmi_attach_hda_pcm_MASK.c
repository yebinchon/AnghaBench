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
struct hdmi_spec_per_pin {int pcm_idx; int /*<<< orphan*/  pcm; } ;
struct hdmi_spec {int /*<<< orphan*/  pcm_bitmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_spec*,int) ; 
 int FUNC1 (struct hdmi_spec*,struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hdmi_spec *spec,
				struct hdmi_spec_per_pin *per_pin)
{
	int idx;

	/* pcm already be attached to the pin */
	if (per_pin->pcm)
		return;
	idx = FUNC1(spec, per_pin);
	if (idx == -EBUSY)
		return;
	per_pin->pcm_idx = idx;
	per_pin->pcm = FUNC0(spec, idx);
	FUNC2(idx, &spec->pcm_bitmap);
}