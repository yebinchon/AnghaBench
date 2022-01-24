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
struct rk_pdm_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDM_DMA_CTRL ; 
 int PDM_DMA_RD_DIS ; 
 int PDM_DMA_RD_EN ; 
 int PDM_DMA_RD_MSK ; 
 int PDM_RX_CLR_MASK ; 
 int PDM_RX_CLR_WR ; 
 int PDM_RX_MASK ; 
 int PDM_RX_START ; 
 int PDM_RX_STOP ; 
 int /*<<< orphan*/  PDM_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct rk_pdm_dev *pdm, int on)
{
	if (on) {
		FUNC0(pdm->regmap, PDM_DMA_CTRL,
				   PDM_DMA_RD_MSK, PDM_DMA_RD_EN);
		FUNC0(pdm->regmap, PDM_SYSCONFIG,
				   PDM_RX_MASK, PDM_RX_START);
	} else {
		FUNC0(pdm->regmap, PDM_DMA_CTRL,
				   PDM_DMA_RD_MSK, PDM_DMA_RD_DIS);
		FUNC0(pdm->regmap, PDM_SYSCONFIG,
				   PDM_RX_MASK | PDM_RX_CLR_MASK,
				   PDM_RX_STOP | PDM_RX_CLR_WR);
	}
}