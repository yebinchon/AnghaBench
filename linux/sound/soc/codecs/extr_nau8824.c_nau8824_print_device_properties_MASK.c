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
struct nau8824 {int jkdet_polarity; int micbias_voltage; int vref_impedance; int sar_threshold_num; int sar_hysteresis; int sar_voltage; int sar_compare_time; int sar_sampling_time; int key_debounce; int jack_eject_debounce; int /*<<< orphan*/ * sar_threshold; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 

__attribute__((used)) static void FUNC1(struct nau8824 *nau8824)
{
	struct device *dev = nau8824->dev;
	int i;

	FUNC0(dev, "jkdet-polarity:       %d\n", nau8824->jkdet_polarity);
	FUNC0(dev, "micbias-voltage:      %d\n", nau8824->micbias_voltage);
	FUNC0(dev, "vref-impedance:       %d\n", nau8824->vref_impedance);

	FUNC0(dev, "sar-threshold-num:    %d\n", nau8824->sar_threshold_num);
	for (i = 0; i < nau8824->sar_threshold_num; i++)
		FUNC0(dev, "sar-threshold[%d]=%x\n", i,
				nau8824->sar_threshold[i]);

	FUNC0(dev, "sar-hysteresis:       %d\n", nau8824->sar_hysteresis);
	FUNC0(dev, "sar-voltage:          %d\n", nau8824->sar_voltage);
	FUNC0(dev, "sar-compare-time:     %d\n", nau8824->sar_compare_time);
	FUNC0(dev, "sar-sampling-time:    %d\n", nau8824->sar_sampling_time);
	FUNC0(dev, "short-key-debounce:   %d\n", nau8824->key_debounce);
	FUNC0(dev, "jack-eject-debounce:  %d\n",
			nau8824->jack_eject_debounce);
}