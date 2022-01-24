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
typedef  int /*<<< orphan*/  u8 ;
struct sof_topology_token {int dummy; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_vendor_array {int size; int type; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_TPLG_TUPLE_TYPE_BOOL 133 
#define  SND_SOC_TPLG_TUPLE_TYPE_BYTE 132 
#define  SND_SOC_TPLG_TUPLE_TYPE_SHORT 131 
#define  SND_SOC_TPLG_TUPLE_TYPE_STRING 130 
#define  SND_SOC_TPLG_TUPLE_TYPE_UUID 129 
#define  SND_SOC_TPLG_TUPLE_TYPE_WORD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int) ; 
 struct snd_sof_dev* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *scomp,
			    void *object,
			    const struct sof_topology_token *tokens,
			    int count,
			    struct snd_soc_tplg_vendor_array *array,
			    int priv_size)
{
	struct snd_sof_dev *sdev = FUNC2(scomp);
	int asize;

	while (priv_size > 0) {
		asize = FUNC1(array->size);

		/* validate asize */
		if (asize < 0) { /* FIXME: A zero-size array makes no sense */
			FUNC0(sdev->dev, "error: invalid array size 0x%x\n",
				asize);
			return -EINVAL;
		}

		/* make sure there is enough data before parsing */
		priv_size -= asize;
		if (priv_size < 0) {
			FUNC0(sdev->dev, "error: invalid array size 0x%x\n",
				asize);
			return -EINVAL;
		}

		/* call correct parser depending on type */
		switch (FUNC1(array->type)) {
		case SND_SOC_TPLG_TUPLE_TYPE_UUID:
			FUNC4(scomp, object, tokens, count,
					      array);
			break;
		case SND_SOC_TPLG_TUPLE_TYPE_STRING:
			FUNC3(scomp, object, tokens, count,
						array);
			break;
		case SND_SOC_TPLG_TUPLE_TYPE_BOOL:
		case SND_SOC_TPLG_TUPLE_TYPE_BYTE:
		case SND_SOC_TPLG_TUPLE_TYPE_WORD:
		case SND_SOC_TPLG_TUPLE_TYPE_SHORT:
			FUNC5(scomp, object, tokens, count,
					      array);
			break;
		default:
			FUNC0(sdev->dev, "error: unknown token type %d\n",
				array->type);
			return -EINVAL;
		}

		/* next array */
		array = (struct snd_soc_tplg_vendor_array *)((u8 *)array
			+ asize);
	}
	return 0;
}