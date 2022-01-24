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
typedef  int u32 ;
struct soc_tplg {int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_ctl_tlv {int /*<<< orphan*/  type; int /*<<< orphan*/  scale; } ;
struct snd_soc_tplg_ctl_hdr {struct snd_soc_tplg_ctl_tlv tlv; int /*<<< orphan*/  access; } ;
struct snd_kcontrol_new {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ; 
 int SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE ; 
#define  SNDRV_CTL_TLVT_DB_SCALE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct soc_tplg*,struct snd_kcontrol_new*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct soc_tplg *tplg,
	struct snd_kcontrol_new *kc, struct snd_soc_tplg_ctl_hdr *tc)
{
	struct snd_soc_tplg_ctl_tlv *tplg_tlv;
	u32 access = FUNC1(tc->access);

	if (!(access & SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE))
		return 0;

	if (!(access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK)) {
		tplg_tlv = &tc->tlv;
		switch (FUNC1(tplg_tlv->type)) {
		case SNDRV_CTL_TLVT_DB_SCALE:
			return FUNC2(tplg, kc,
					&tplg_tlv->scale);

		/* TODO: add support for other TLV types */
		default:
			FUNC0(tplg->dev, "Unsupported TLV type %d\n",
					tplg_tlv->type);
			return -EINVAL;
		}
	}

	return 0;
}