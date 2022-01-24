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
struct nau8825 {int jkdet_polarity; int micbias_voltage; int vref_impedance; int sar_threshold_num; int* sar_threshold; int sar_hysteresis; int sar_voltage; int sar_compare_time; int sar_sampling_time; int key_debounce; int jack_insert_debounce; int jack_eject_debounce; int /*<<< orphan*/ * mclk; void* xtalk_enable; void* jkdet_pull_up; void* jkdet_pull_enable; void* jkdet_enable; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,char*,int*) ; 
 int FUNC5 (struct device*,char*,int*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
	struct nau8825 *nau8825) {
	int ret;

	nau8825->jkdet_enable = FUNC3(dev,
		"nuvoton,jkdet-enable");
	nau8825->jkdet_pull_enable = FUNC3(dev,
		"nuvoton,jkdet-pull-enable");
	nau8825->jkdet_pull_up = FUNC3(dev,
		"nuvoton,jkdet-pull-up");
	ret = FUNC4(dev, "nuvoton,jkdet-polarity",
		&nau8825->jkdet_polarity);
	if (ret)
		nau8825->jkdet_polarity = 1;
	ret = FUNC4(dev, "nuvoton,micbias-voltage",
		&nau8825->micbias_voltage);
	if (ret)
		nau8825->micbias_voltage = 6;
	ret = FUNC4(dev, "nuvoton,vref-impedance",
		&nau8825->vref_impedance);
	if (ret)
		nau8825->vref_impedance = 2;
	ret = FUNC4(dev, "nuvoton,sar-threshold-num",
		&nau8825->sar_threshold_num);
	if (ret)
		nau8825->sar_threshold_num = 4;
	ret = FUNC5(dev, "nuvoton,sar-threshold",
		nau8825->sar_threshold, nau8825->sar_threshold_num);
	if (ret) {
		nau8825->sar_threshold[0] = 0x08;
		nau8825->sar_threshold[1] = 0x12;
		nau8825->sar_threshold[2] = 0x26;
		nau8825->sar_threshold[3] = 0x73;
	}
	ret = FUNC4(dev, "nuvoton,sar-hysteresis",
		&nau8825->sar_hysteresis);
	if (ret)
		nau8825->sar_hysteresis = 0;
	ret = FUNC4(dev, "nuvoton,sar-voltage",
		&nau8825->sar_voltage);
	if (ret)
		nau8825->sar_voltage = 6;
	ret = FUNC4(dev, "nuvoton,sar-compare-time",
		&nau8825->sar_compare_time);
	if (ret)
		nau8825->sar_compare_time = 1;
	ret = FUNC4(dev, "nuvoton,sar-sampling-time",
		&nau8825->sar_sampling_time);
	if (ret)
		nau8825->sar_sampling_time = 1;
	ret = FUNC4(dev, "nuvoton,short-key-debounce",
		&nau8825->key_debounce);
	if (ret)
		nau8825->key_debounce = 3;
	ret = FUNC4(dev, "nuvoton,jack-insert-debounce",
		&nau8825->jack_insert_debounce);
	if (ret)
		nau8825->jack_insert_debounce = 7;
	ret = FUNC4(dev, "nuvoton,jack-eject-debounce",
		&nau8825->jack_eject_debounce);
	if (ret)
		nau8825->jack_eject_debounce = 0;
	nau8825->xtalk_enable = FUNC3(dev,
		"nuvoton,crosstalk-enable");

	nau8825->mclk = FUNC6(dev, "mclk");
	if (FUNC1(nau8825->mclk) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (FUNC1(nau8825->mclk) == -ENOENT) {
		/* The MCLK is managed externally or not used at all */
		nau8825->mclk = NULL;
		FUNC2(dev, "No 'mclk' clock found, assume MCLK is managed externally");
	} else if (FUNC0(nau8825->mclk)) {
		return -EINVAL;
	}

	return 0;
}