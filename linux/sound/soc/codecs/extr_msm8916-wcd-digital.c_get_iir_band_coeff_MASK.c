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
typedef  int uint32_t ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int BAND_MAX ; 
 scalar_t__ LPASS_CDC_IIR1_COEF_B1_CTL ; 
 scalar_t__ LPASS_CDC_IIR1_COEF_B2_CTL ; 
 int FUNC0 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,scalar_t__,int) ; 

__attribute__((used)) static uint32_t FUNC2(struct snd_soc_component *component,
				   int iir_idx, int band_idx,
				   int coeff_idx)
{
	uint32_t value = 0;

	/* Address does not automatically update if reading */
	FUNC1(component,
		(LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
		((band_idx * BAND_MAX + coeff_idx)
		* sizeof(uint32_t)) & 0x7F);

	value |= FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx));

	FUNC1(component,
		(LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
		((band_idx * BAND_MAX + coeff_idx)
		* sizeof(uint32_t) + 1) & 0x7F);

	value |= (FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) << 8);

	FUNC1(component,
		(LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
		((band_idx * BAND_MAX + coeff_idx)
		* sizeof(uint32_t) + 2) & 0x7F);

	value |= (FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) << 16);

	FUNC1(component,
		(LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
		((band_idx * BAND_MAX + coeff_idx)
		* sizeof(uint32_t) + 3) & 0x7F);

	/* Mask bits top 2 bits since they are reserved */
	value |= ((FUNC0(component,
		 (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) & 0x3f) << 24);
	return value;

}