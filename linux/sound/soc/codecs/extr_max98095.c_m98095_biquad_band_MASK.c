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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 unsigned int M98095_174_DAI1_BQ_BASE ; 
 unsigned int M98095_17E_DAI2_BQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int M98095_COEFS_PER_BAND ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component, unsigned int dai,
		    unsigned int band, u16 *coefs)
{
	unsigned int bq_reg;
	unsigned int i;

	if (FUNC2(band > 1) ||
	    FUNC2(dai > 1))
		return;

	/* Load the base register address */
	bq_reg = dai ? M98095_17E_DAI2_BQ_BASE : M98095_174_DAI1_BQ_BASE;

	/* Add the band address offset, note adjustment for word address */
	bq_reg += band * (M98095_COEFS_PER_BAND << 1);

	/* Step through the registers and coefs */
	for (i = 0; i < M98095_COEFS_PER_BAND; i++) {
		FUNC3(component, bq_reg++, FUNC1(coefs[i]));
		FUNC3(component, bq_reg++, FUNC0(coefs[i]));
	}
}