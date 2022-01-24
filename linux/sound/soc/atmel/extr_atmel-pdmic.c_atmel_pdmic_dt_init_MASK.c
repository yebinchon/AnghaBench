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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct atmel_pdmic_pdata {char* card_name; scalar_t__ mic_min_freq; scalar_t__ mic_max_freq; scalar_t__ mic_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct atmel_pdmic_pdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PDMIC_OFFSET_MAX_VAL ; 
 scalar_t__ PDMIC_OFFSET_MIN_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__,scalar_t__) ; 
 struct atmel_pdmic_pdata* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,char**) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static struct atmel_pdmic_pdata *FUNC7(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct atmel_pdmic_pdata *pdata;

	if (!np) {
		FUNC1(dev, "device node not found\n");
		return FUNC0(-EINVAL);
	}

	pdata = FUNC3(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return FUNC0(-ENOMEM);

	if (FUNC5(np, "atmel,model", &pdata->card_name))
		pdata->card_name = "PDMIC";

	if (FUNC6(np, "atmel,mic-min-freq",
				 &pdata->mic_min_freq)) {
		FUNC1(dev, "failed to get mic-min-freq\n");
		return FUNC0(-EINVAL);
	}

	if (FUNC6(np, "atmel,mic-max-freq",
				 &pdata->mic_max_freq)) {
		FUNC1(dev, "failed to get mic-max-freq\n");
		return FUNC0(-EINVAL);
	}

	if (pdata->mic_max_freq < pdata->mic_min_freq) {
		FUNC1(dev,
			"mic-max-freq should not be less than mic-min-freq\n");
		return FUNC0(-EINVAL);
	}

	if (FUNC4(np, "atmel,mic-offset", &pdata->mic_offset))
		pdata->mic_offset = 0;

	if (pdata->mic_offset > PDMIC_OFFSET_MAX_VAL) {
		FUNC2(dev,
			 "mic-offset value %d is larger than the max value %d, the max value is specified\n",
			 pdata->mic_offset, PDMIC_OFFSET_MAX_VAL);
		pdata->mic_offset = PDMIC_OFFSET_MAX_VAL;
	} else if (pdata->mic_offset < PDMIC_OFFSET_MIN_VAL) {
		FUNC2(dev,
			 "mic-offset value %d is less than the min value %d, the min value is specified\n",
			 pdata->mic_offset, PDMIC_OFFSET_MIN_VAL);
		pdata->mic_offset = PDMIC_OFFSET_MIN_VAL;
	}

	return pdata;
}