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
struct snd_ice1712 {unsigned int akm_codecs; TYPE_2__* akm; scalar_t__ cs8427; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_rate_val ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, int spdif_is_master)
{
	/* change CS8427 clock source too */
	if (ice->cs8427)
		FUNC0(ice, spdif_is_master);
	/* notify ak4524 chip as well */
	if (spdif_is_master) {
		unsigned int i;
		for (i = 0; i < ice->akm_codecs; i++) {
			if (ice->akm[i].ops.set_rate_val)
				ice->akm[i].ops.set_rate_val(&ice->akm[i], 0);
		}
	}
}