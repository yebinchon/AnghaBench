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
struct snd_soc_tplg_vendor_array {scalar_t__ size; } ;
struct TYPE_2__ {char* data; } ;
struct snd_soc_tplg_manifest {TYPE_1__ priv; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SKL_TYPE_TUPLE ; 
 int FUNC0 (struct device*,struct snd_soc_tplg_vendor_array*) ; 
 int FUNC1 (struct device*,char*,struct skl_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_tplg_manifest *manifest,
			struct device *dev, struct skl_dev *skl)
{
	struct snd_soc_tplg_vendor_array *array;
	int num_blocks, block_size = 0, block_type, off = 0;
	char *data;
	int ret;

	/* Read the NUM_DATA_BLOCKS descriptor */
	array = (struct snd_soc_tplg_vendor_array *)manifest->priv.data;
	ret = FUNC0(dev, array);
	if (ret < 0)
		return ret;
	num_blocks = ret;

	off += array->size;
	/* Read the BLOCK_TYPE and BLOCK_SIZE descriptor */
	while (num_blocks > 0) {
		array = (struct snd_soc_tplg_vendor_array *)
				(manifest->priv.data + off);
		ret = FUNC0(dev, array);

		if (ret < 0)
			return ret;
		block_type = ret;
		off += array->size;

		array = (struct snd_soc_tplg_vendor_array *)
			(manifest->priv.data + off);

		ret = FUNC0(dev, array);

		if (ret < 0)
			return ret;
		block_size = ret;
		off += array->size;

		array = (struct snd_soc_tplg_vendor_array *)
			(manifest->priv.data + off);

		data = (manifest->priv.data + off);

		if (block_type == SKL_TYPE_TUPLE) {
			ret = FUNC1(dev, data, skl,
					block_size);

			if (ret < 0)
				return ret;

			--num_blocks;
		} else {
			return -EINVAL;
		}
		off += ret;
	}

	return 0;
}