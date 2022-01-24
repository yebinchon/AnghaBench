#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct axg_pdm_hcic {int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; int /*<<< orphan*/  ds; int /*<<< orphan*/  steps; } ;
struct axg_pdm {int /*<<< orphan*/  map; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* filters; } ;
struct TYPE_3__ {struct axg_pdm_hcic hcic; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDM_HCIC_CTRL1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int PDM_HCIC_CTRL1_DSR_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int PDM_HCIC_CTRL1_GAIN_MULT_MASK ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int PDM_HCIC_CTRL1_GAIN_SFT_MASK ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int PDM_HCIC_CTRL1_STAGE_NUM_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct axg_pdm *priv)
{
	const struct axg_pdm_hcic *hcic = &priv->cfg->filters->hcic;
	unsigned int val;

	val = FUNC3(hcic->steps);
	val |= FUNC0(hcic->ds);
	val |= FUNC1(hcic->mult);
	val |= FUNC2(hcic->shift);

	FUNC4(priv->map, PDM_HCIC_CTRL1,
			   PDM_HCIC_CTRL1_STAGE_NUM_MASK |
			   PDM_HCIC_CTRL1_DSR_MASK |
			   PDM_HCIC_CTRL1_GAIN_MULT_MASK |
			   PDM_HCIC_CTRL1_GAIN_SFT_MASK,
			   val);
}