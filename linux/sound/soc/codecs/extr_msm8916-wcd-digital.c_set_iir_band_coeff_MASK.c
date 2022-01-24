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
 scalar_t__ LPASS_CDC_IIR1_COEF_B2_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct snd_soc_component *component,
				int iir_idx, int band_idx,
				uint32_t value)
{
	FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
		(value & 0xFF));

	FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
		(value >> 8) & 0xFF);

	FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
		(value >> 16) & 0xFF);

	/* Mask top 2 bits, 7-8 are reserved */
	FUNC0(component,
		(LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
		(value >> 24) & 0x3F);
}