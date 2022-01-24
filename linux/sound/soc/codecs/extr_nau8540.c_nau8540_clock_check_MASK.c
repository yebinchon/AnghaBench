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
struct nau8540 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_ADC_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  osr_adc_sel ; 

__attribute__((used)) static int FUNC2(struct nau8540 *nau8540, int rate, int osr)
{
	if (osr >= FUNC0(osr_adc_sel))
		return -EINVAL;

	if (rate * osr > CLK_ADC_MAX) {
		FUNC1(nau8540->dev, "exceed the maximum frequency of CLK_ADC\n");
		return -EINVAL;
	}

	return 0;
}