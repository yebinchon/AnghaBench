#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wtm_spec {int /*<<< orphan*/  mute_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int force_rdma1; TYPE_1__ gpio; struct wtm_spec* spec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  STAC946X_MASTER_CLOCKING 129 
#define  STAC946X_RESET 128 
 struct wtm_spec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  stac9460_set_rate_val ; 

__attribute__((used)) static int FUNC4(struct snd_ice1712 *ice)
{
	static unsigned short stac_inits_wtm[] = {
		STAC946X_RESET, 0,
		STAC946X_MASTER_CLOCKING, 0x11,
		(unsigned short)-1
	};
	unsigned short *p;
	struct wtm_spec *spec;

	/*WTM 192M*/
	ice->num_total_dacs = 8;
	ice->num_total_adcs = 4;
	ice->force_rdma1 = 1;

	/*init mutex for dac mute conflict*/
	spec = FUNC0(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	ice->spec = spec;
	FUNC1(&spec->mute_mutex);


	/*initialize codec*/
	p = stac_inits_wtm;
	for (; *p != (unsigned short)-1; p += 2) {
		FUNC3(ice, p[0], p[1]);
		FUNC2(ice, p[0], p[1]);
	}
	ice->gpio.set_pro_rate = stac9460_set_rate_val;
	return 0;
}