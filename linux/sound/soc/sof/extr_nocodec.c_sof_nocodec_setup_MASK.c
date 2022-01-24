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
struct sof_dev_desc {int /*<<< orphan*/  nocodec_tplg_filename; int /*<<< orphan*/  nocodec_fw_filename; } ;
struct snd_sof_pdata {char* drv_name; int /*<<< orphan*/  tplg_filename; int /*<<< orphan*/  fw_filename; } ;
struct snd_sof_dsp_ops {int num_drv; } ;
struct snd_soc_dai_link {int dummy; } ;
struct snd_soc_acpi_mach {char* drv_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_soc_dai_link* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,struct snd_sof_dsp_ops const*,struct snd_soc_dai_link*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sof_nocodec_card ; 

int FUNC2(struct device *dev,
		      struct snd_sof_pdata *sof_pdata,
		      struct snd_soc_acpi_mach *mach,
		      const struct sof_dev_desc *desc,
		      const struct snd_sof_dsp_ops *ops)
{
	struct snd_soc_dai_link *links;
	int ret;

	if (!mach)
		return -EINVAL;

	sof_pdata->drv_name = "sof-nocodec";

	mach->drv_name = "sof-nocodec";
	sof_pdata->fw_filename = desc->nocodec_fw_filename;
	sof_pdata->tplg_filename = desc->nocodec_tplg_filename;

	/* create dummy BE dai_links */
	links = FUNC0(dev, sizeof(struct snd_soc_dai_link) *
			     ops->num_drv, GFP_KERNEL);
	if (!links)
		return -ENOMEM;

	ret = FUNC1(dev, ops, links, ops->num_drv,
				    &sof_nocodec_card);
	return ret;
}