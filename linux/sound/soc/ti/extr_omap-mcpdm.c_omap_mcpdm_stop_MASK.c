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
typedef  int u32 ;
struct omap_mcpdm {int dummy; } ;

/* Variables and functions */
 int MCPDM_PDM_DN_MASK ; 
 int MCPDM_PDM_UP_MASK ; 
 int /*<<< orphan*/  MCPDM_REG_CTRL ; 
 int MCPDM_SW_DN_RST ; 
 int MCPDM_SW_UP_RST ; 
 int FUNC0 (struct omap_mcpdm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcpdm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct omap_mcpdm *mcpdm)
{
	u32 ctrl = FUNC0(mcpdm, MCPDM_REG_CTRL);
	u32 link_mask = MCPDM_PDM_DN_MASK | MCPDM_PDM_UP_MASK;

	ctrl |= (MCPDM_SW_DN_RST | MCPDM_SW_UP_RST);
	FUNC1(mcpdm, MCPDM_REG_CTRL, ctrl);

	ctrl &= ~(link_mask);
	FUNC1(mcpdm, MCPDM_REG_CTRL, ctrl);

	ctrl &= ~(MCPDM_SW_DN_RST | MCPDM_SW_UP_RST);
	FUNC1(mcpdm, MCPDM_REG_CTRL, ctrl);

}