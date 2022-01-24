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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_ANCCONF1 ; 
 int /*<<< orphan*/  AB8500_ANCCONF1_ANCFIRUPDATE ; 
 int /*<<< orphan*/  AB8500_ANCCONF5 ; 
 int /*<<< orphan*/  AB8500_ANCCONF6 ; 
 int AB8500_ANC_FIR_COEFFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component,
		unsigned int bnk, unsigned int par, unsigned int val)
{
	if (par == 0 && bnk == 0)
		FUNC1(component, AB8500_ANCCONF1,
			FUNC0(AB8500_ANCCONF1_ANCFIRUPDATE),
			FUNC0(AB8500_ANCCONF1_ANCFIRUPDATE));

	FUNC2(component, AB8500_ANCCONF5, val >> 8 & 0xff);
	FUNC2(component, AB8500_ANCCONF6, val &  0xff);

	if (par == AB8500_ANC_FIR_COEFFS - 1 && bnk == 1)
		FUNC1(component, AB8500_ANCCONF1,
			FUNC0(AB8500_ANCCONF1_ANCFIRUPDATE), 0);
}