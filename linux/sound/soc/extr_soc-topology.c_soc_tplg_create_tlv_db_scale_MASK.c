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
struct soc_tplg {int dummy; } ;
struct snd_soc_tplg_tlv_dbscale {int /*<<< orphan*/  mute; int /*<<< orphan*/  step; int /*<<< orphan*/  min; } ;
struct TYPE_2__ {void* p; } ;
struct snd_kcontrol_new {TYPE_1__ tlv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ; 
 int TLV_DB_SCALE_MASK ; 
 int TLV_DB_SCALE_MUTE ; 
 unsigned int* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct soc_tplg *tplg,
	struct snd_kcontrol_new *kc, struct snd_soc_tplg_tlv_dbscale *scale)
{
	unsigned int item_len = 2 * sizeof(unsigned int);
	unsigned int *p;

	p = FUNC0(item_len + 2 * sizeof(unsigned int), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	p[0] = SNDRV_CTL_TLVT_DB_SCALE;
	p[1] = item_len;
	p[2] = FUNC1(scale->min);
	p[3] = (FUNC1(scale->step) & TLV_DB_SCALE_MASK)
		| (FUNC1(scale->mute) ? TLV_DB_SCALE_MUTE : 0);

	kc->tlv.p = (void *)p;
	return 0;
}