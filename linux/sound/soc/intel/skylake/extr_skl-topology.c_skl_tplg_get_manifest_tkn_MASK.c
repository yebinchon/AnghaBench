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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_tplg_vendor_value_elem {int dummy; } ;
struct snd_soc_tplg_vendor_string_elem {int dummy; } ;
struct snd_soc_tplg_vendor_array {int type; int num_elems; struct snd_soc_tplg_vendor_value_elem* value; TYPE_2__* uuid; scalar_t__ size; } ;
struct skl_dev {TYPE_1__** modules; int /*<<< orphan*/  nr_modules; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  guid_t ;
struct TYPE_4__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  token; } ;
struct TYPE_3__ {int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SKL_TKN_UUID ; 
#define  SND_SOC_TPLG_TUPLE_TYPE_STRING 129 
#define  SND_SOC_TPLG_TUPLE_TYPE_UUID 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,struct snd_soc_tplg_vendor_value_elem*,struct skl_dev*) ; 
 int FUNC3 (struct device*,struct snd_soc_tplg_vendor_array*,struct skl_dev*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
		char *pvt_data, struct skl_dev *skl,
		int block_size)
{
	int tkn_count = 0, ret;
	int off = 0, tuple_size = 0;
	u8 uuid_index = 0;
	struct snd_soc_tplg_vendor_array *array;
	struct snd_soc_tplg_vendor_value_elem *tkn_elem;

	if (block_size <= 0)
		return -EINVAL;

	while (tuple_size < block_size) {
		array = (struct snd_soc_tplg_vendor_array *)(pvt_data + off);
		off += array->size;
		switch (array->type) {
		case SND_SOC_TPLG_TUPLE_TYPE_STRING:
			ret = FUNC3(dev, array, skl);

			if (ret < 0)
				return ret;
			tkn_count = ret;

			tuple_size += tkn_count *
				sizeof(struct snd_soc_tplg_vendor_string_elem);
			continue;

		case SND_SOC_TPLG_TUPLE_TYPE_UUID:
			if (array->uuid->token != SKL_TKN_UUID) {
				FUNC0(dev, "Not an UUID token: %d\n",
					array->uuid->token);
				return -EINVAL;
			}
			if (uuid_index >= skl->nr_modules) {
				FUNC0(dev, "Too many UUID tokens\n");
				return -EINVAL;
			}
			FUNC1(&skl->modules[uuid_index++]->uuid,
				  (guid_t *)&array->uuid->uuid);

			tuple_size += sizeof(*array->uuid);
			continue;

		default:
			tkn_elem = array->value;
			tkn_count = 0;
			break;
		}

		while (tkn_count <= array->num_elems - 1) {
			ret = FUNC2(dev,
					tkn_elem, skl);
			if (ret < 0)
				return ret;

			tkn_count = tkn_count + ret;
			tkn_elem++;
		}
		tuple_size += (tkn_count * sizeof(*tkn_elem));
		tkn_count = 0;
	}

	return off;
}