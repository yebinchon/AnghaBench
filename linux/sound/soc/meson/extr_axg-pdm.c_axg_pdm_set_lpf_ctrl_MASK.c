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
struct axg_pdm_lpf {int /*<<< orphan*/  round_mode; int /*<<< orphan*/  ds; int /*<<< orphan*/  tap_num; } ;
struct axg_pdm {int /*<<< orphan*/  map; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* filters; } ;
struct TYPE_3__ {struct axg_pdm_lpf* lpf; } ;

/* Variables and functions */
 unsigned int PDM_F1_CTRL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int PDM_LPF_DSR_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int PDM_LPF_ROUND_MODE_MASK ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int PDM_LPF_STAGE_NUM_MASK ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct axg_pdm *priv, unsigned int index)
{
	const struct axg_pdm_lpf *lpf = &priv->cfg->filters->lpf[index];
	unsigned int offset = index * FUNC3(priv->map)
		+ PDM_F1_CTRL;
	unsigned int val;

	val = FUNC2(lpf->tap_num);
	val |= FUNC0(lpf->ds);
	val |= FUNC1(lpf->round_mode);

	FUNC4(priv->map, offset,
			   PDM_LPF_STAGE_NUM_MASK |
			   PDM_LPF_DSR_MASK |
			   PDM_LPF_ROUND_MODE_MASK,
			   val);
}