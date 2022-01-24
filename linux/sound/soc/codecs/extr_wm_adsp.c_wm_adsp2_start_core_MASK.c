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
struct wm_adsp {scalar_t__ base; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ ADSP2_CONTROL ; 
 int ADSP2_CORE_ENA ; 
 int ADSP2_START ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC1(struct wm_adsp *dsp)
{
	return FUNC0(dsp->regmap, dsp->base + ADSP2_CONTROL,
				 ADSP2_CORE_ENA | ADSP2_START,
				 ADSP2_CORE_ENA | ADSP2_START);
}