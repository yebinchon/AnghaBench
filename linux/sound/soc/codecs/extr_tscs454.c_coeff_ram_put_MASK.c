#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mutex {int dummy; } ;
struct TYPE_16__ {struct mutex lock; } ;
struct TYPE_15__ {struct mutex lock; } ;
struct TYPE_12__ {int synced; struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct TYPE_10__ {int synced; struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct TYPE_9__ {int synced; struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct tscs454 {TYPE_8__ pll1; TYPE_7__ pll2; TYPE_4__ sub_ram; TYPE_2__ spk_ram; TYPE_1__ dac_ram; } ;
struct soc_bytes_ext {size_t max; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_3__ id; scalar_t__ private_value; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_5__ bytes; } ;
struct snd_ctl_elem_value {TYPE_6__ value; } ;
struct coeff_ram_ctl {size_t addr; struct soc_bytes_ext bytes_ext; } ;

/* Variables and functions */
 size_t COEFF_SIZE ; 
 int EINVAL ; 
 unsigned int R_DACCRADD ; 
 unsigned int R_DACCRS ; 
 unsigned int R_DACCRWDL ; 
 int /*<<< orphan*/  R_PLLSTAT ; 
 unsigned int R_SPKCRADD ; 
 unsigned int R_SPKCRS ; 
 unsigned int R_SPKCRWDL ; 
 unsigned int R_SUBCRADD ; 
 unsigned int R_SUBCRS ; 
 unsigned int R_SUBCRWDL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 struct tscs454* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct snd_soc_component* FUNC6 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC6(kcontrol);
	struct tscs454 *tscs454 = FUNC4(component);
	struct coeff_ram_ctl *ctl =
		(struct coeff_ram_ctl *)kcontrol->private_value;
	struct soc_bytes_ext *params = &ctl->bytes_ext;
	unsigned int coeff_cnt = params->max / COEFF_SIZE;
	u8 *coeff_ram;
	struct mutex *coeff_ram_lock;
	bool *coeff_ram_synced;
	unsigned int r_stat;
	unsigned int r_addr;
	unsigned int r_wr;
	unsigned int val;
	int ret;

	if (FUNC7(kcontrol->id.name, "DAC")) {
		coeff_ram = tscs454->dac_ram.cache;
		coeff_ram_lock = &tscs454->dac_ram.lock;
		coeff_ram_synced = &tscs454->dac_ram.synced;
		r_stat = R_DACCRS;
		r_addr = R_DACCRADD;
		r_wr = R_DACCRWDL;
	} else if (FUNC7(kcontrol->id.name, "Speaker")) {
		coeff_ram = tscs454->spk_ram.cache;
		coeff_ram_lock = &tscs454->spk_ram.lock;
		coeff_ram_synced = &tscs454->spk_ram.synced;
		r_stat = R_SPKCRS;
		r_addr = R_SPKCRADD;
		r_wr = R_SPKCRWDL;
	} else if (FUNC7(kcontrol->id.name, "Sub")) {
		coeff_ram = tscs454->sub_ram.cache;
		coeff_ram_lock = &tscs454->sub_ram.lock;
		coeff_ram_synced = &tscs454->sub_ram.synced;
		r_stat = R_SUBCRS;
		r_addr = R_SUBCRADD;
		r_wr = R_SUBCRWDL;
	} else {
		return -EINVAL;
	}

	FUNC2(coeff_ram_lock);

	*coeff_ram_synced = false;

	FUNC1(&coeff_ram[ctl->addr * COEFF_SIZE],
		ucontrol->value.bytes.data, params->max);

	FUNC2(&tscs454->pll1.lock);
	FUNC2(&tscs454->pll2.lock);

	ret = FUNC5(component, R_PLLSTAT, &val);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to read PLL status (%d)\n",
				ret);
		goto exit;
	}
	if (val) { /* PLLs locked */
		ret = FUNC8(component, coeff_ram,
			r_stat, r_addr, r_wr,
			ctl->addr, coeff_cnt);
		if (ret < 0) {
			FUNC0(component->dev,
				"Failed to flush coeff ram cache (%d)\n", ret);
			goto exit;
		}
		*coeff_ram_synced = true;
	}

	ret = 0;
exit:
	FUNC3(&tscs454->pll2.lock);
	FUNC3(&tscs454->pll1.lock);
	FUNC3(coeff_ram_lock);

	return ret;
}