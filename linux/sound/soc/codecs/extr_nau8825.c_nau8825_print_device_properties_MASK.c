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
struct nau8825 {int jkdet_enable; int jkdet_pull_enable; int jkdet_pull_up; int jkdet_polarity; int micbias_voltage; int vref_impedance; int sar_threshold_num; int sar_hysteresis; int sar_voltage; int sar_compare_time; int sar_sampling_time; int key_debounce; int jack_insert_debounce; int jack_eject_debounce; int xtalk_enable; int /*<<< orphan*/ * sar_threshold; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 

__attribute__((used)) static void FUNC1(struct nau8825 *nau8825)
{
	int i;
	struct device *dev = nau8825->dev;

	FUNC0(dev, "jkdet-enable:         %d\n", nau8825->jkdet_enable);
	FUNC0(dev, "jkdet-pull-enable:    %d\n", nau8825->jkdet_pull_enable);
	FUNC0(dev, "jkdet-pull-up:        %d\n", nau8825->jkdet_pull_up);
	FUNC0(dev, "jkdet-polarity:       %d\n", nau8825->jkdet_polarity);
	FUNC0(dev, "micbias-voltage:      %d\n", nau8825->micbias_voltage);
	FUNC0(dev, "vref-impedance:       %d\n", nau8825->vref_impedance);

	FUNC0(dev, "sar-threshold-num:    %d\n", nau8825->sar_threshold_num);
	for (i = 0; i < nau8825->sar_threshold_num; i++)
		FUNC0(dev, "sar-threshold[%d]=%d\n", i,
				nau8825->sar_threshold[i]);

	FUNC0(dev, "sar-hysteresis:       %d\n", nau8825->sar_hysteresis);
	FUNC0(dev, "sar-voltage:          %d\n", nau8825->sar_voltage);
	FUNC0(dev, "sar-compare-time:     %d\n", nau8825->sar_compare_time);
	FUNC0(dev, "sar-sampling-time:    %d\n", nau8825->sar_sampling_time);
	FUNC0(dev, "short-key-debounce:   %d\n", nau8825->key_debounce);
	FUNC0(dev, "jack-insert-debounce: %d\n",
			nau8825->jack_insert_debounce);
	FUNC0(dev, "jack-eject-debounce:  %d\n",
			nau8825->jack_eject_debounce);
	FUNC0(dev, "crosstalk-enable:     %d\n",
			nau8825->xtalk_enable);
}