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
struct soc_tplg {scalar_t__ pass; int pos; int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_hdr {int /*<<< orphan*/  payload_size; int /*<<< orphan*/  count; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_1__ ops; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_TPLG_CTL_BYTES 140 
#define  SND_SOC_TPLG_CTL_ENUM 139 
#define  SND_SOC_TPLG_CTL_ENUM_VALUE 138 
#define  SND_SOC_TPLG_CTL_RANGE 137 
#define  SND_SOC_TPLG_CTL_STROBE 136 
#define  SND_SOC_TPLG_CTL_VOLSW 135 
#define  SND_SOC_TPLG_CTL_VOLSW_SX 134 
#define  SND_SOC_TPLG_CTL_VOLSW_XR_SX 133 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE 132 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE 131 
#define  SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT 130 
#define  SND_SOC_TPLG_DAPM_CTL_PIN 129 
#define  SND_SOC_TPLG_DAPM_CTL_VOLSW 128 
 scalar_t__ SOC_TPLG_PASS_MIXER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_tplg*,struct snd_soc_tplg_ctl_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_tplg*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_tplg*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct soc_tplg*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct soc_tplg*) ; 

__attribute__((used)) static int FUNC8(struct soc_tplg *tplg,
	struct snd_soc_tplg_hdr *hdr)
{
	struct snd_soc_tplg_ctl_hdr *control_hdr;
	int i;

	if (tplg->pass != SOC_TPLG_PASS_MIXER) {
		tplg->pos += FUNC2(hdr->size) +
			FUNC2(hdr->payload_size);
		return 0;
	}

	FUNC0(tplg->dev, "ASoC: adding %d kcontrols at 0x%lx\n", hdr->count,
		FUNC7(tplg));

	for (i = 0; i < FUNC2(hdr->count); i++) {

		control_hdr = (struct snd_soc_tplg_ctl_hdr *)tplg->pos;

		if (FUNC2(control_hdr->size) != sizeof(*control_hdr)) {
			FUNC1(tplg->dev, "ASoC: invalid control size\n");
			return -EINVAL;
		}

		switch (FUNC2(control_hdr->ops.info)) {
		case SND_SOC_TPLG_CTL_VOLSW:
		case SND_SOC_TPLG_CTL_STROBE:
		case SND_SOC_TPLG_CTL_VOLSW_SX:
		case SND_SOC_TPLG_CTL_VOLSW_XR_SX:
		case SND_SOC_TPLG_CTL_RANGE:
		case SND_SOC_TPLG_DAPM_CTL_VOLSW:
		case SND_SOC_TPLG_DAPM_CTL_PIN:
			FUNC6(tplg, 1,
					       FUNC2(hdr->payload_size));
			break;
		case SND_SOC_TPLG_CTL_ENUM:
		case SND_SOC_TPLG_CTL_ENUM_VALUE:
		case SND_SOC_TPLG_DAPM_CTL_ENUM_DOUBLE:
		case SND_SOC_TPLG_DAPM_CTL_ENUM_VIRT:
		case SND_SOC_TPLG_DAPM_CTL_ENUM_VALUE:
			FUNC5(tplg, 1,
					      FUNC2(hdr->payload_size));
			break;
		case SND_SOC_TPLG_CTL_BYTES:
			FUNC4(tplg, 1,
					       FUNC2(hdr->payload_size));
			break;
		default:
			FUNC3(tplg, control_hdr, i);
			return -EINVAL;
		}
	}

	return 0;
}