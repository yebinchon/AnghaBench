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
struct snd_soc_tplg_vendor_array {scalar_t__ size; } ;
struct TYPE_3__ {char* data; } ;
struct snd_soc_tplg_dapm_widget {TYPE_1__ priv; } ;
struct TYPE_4__ {int caps_size; int /*<<< orphan*/  caps; } ;
struct skl_module_cfg {TYPE_2__ formats_config; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SKL_TYPE_TUPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct device*,struct snd_soc_tplg_vendor_array*) ; 
 int FUNC2 (struct snd_soc_tplg_dapm_widget*,struct skl_dev*,struct device*,struct skl_module_cfg*) ; 
 int FUNC3 (struct device*,char*,struct skl_dev*,struct skl_module_cfg*,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_tplg_dapm_widget *tplg_w,
				struct skl_dev *skl, struct device *dev,
				struct skl_module_cfg *mconfig)
{
	struct snd_soc_tplg_vendor_array *array;
	int num_blocks, block_size = 0, block_type, off = 0;
	char *data;
	int ret;

	/*
	 * v4 configuration files have a valid UUID at the start of
	 * the widget's private data.
	 */
	if (FUNC4((char *)tplg_w->priv.data))
		return FUNC2(tplg_w, skl, dev, mconfig);

	/* Read the NUM_DATA_BLOCKS descriptor */
	array = (struct snd_soc_tplg_vendor_array *)tplg_w->priv.data;
	ret = FUNC1(dev, array);
	if (ret < 0)
		return ret;
	num_blocks = ret;

	off += array->size;
	/* Read the BLOCK_TYPE and BLOCK_SIZE descriptor */
	while (num_blocks > 0) {
		array = (struct snd_soc_tplg_vendor_array *)
				(tplg_w->priv.data + off);

		ret = FUNC1(dev, array);

		if (ret < 0)
			return ret;
		block_type = ret;
		off += array->size;

		array = (struct snd_soc_tplg_vendor_array *)
			(tplg_w->priv.data + off);

		ret = FUNC1(dev, array);

		if (ret < 0)
			return ret;
		block_size = ret;
		off += array->size;

		array = (struct snd_soc_tplg_vendor_array *)
			(tplg_w->priv.data + off);

		data = (tplg_w->priv.data + off);

		if (block_type == SKL_TYPE_TUPLE) {
			ret = FUNC3(dev, data,
					skl, mconfig, block_size);

			if (ret < 0)
				return ret;

			--num_blocks;
		} else {
			if (mconfig->formats_config.caps_size > 0)
				FUNC0(mconfig->formats_config.caps, data,
					mconfig->formats_config.caps_size);
			--num_blocks;
			ret = mconfig->formats_config.caps_size;
		}
		off += ret;
	}

	return 0;
}