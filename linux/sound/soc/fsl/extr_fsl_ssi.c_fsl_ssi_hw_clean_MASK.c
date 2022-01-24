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
struct fsl_ssi {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SSI_SACNT ; 
 int /*<<< orphan*/  REG_SSI_SCR ; 
 int /*<<< orphan*/  REG_SSI_SOR ; 
 int SSI_SCR_RE ; 
 int SSI_SCR_SSIEN ; 
 int SSI_SCR_TE ; 
 scalar_t__ FUNC0 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fsl_ssi *ssi)
{
	/* Disable registers for AC97 */
	if (FUNC0(ssi)) {
		/* Disable TE and RE bits first */
		FUNC1(ssi->regs, REG_SSI_SCR,
				   SSI_SCR_TE | SSI_SCR_RE, 0);
		/* Disable AC97 mode */
		FUNC2(ssi->regs, REG_SSI_SACNT, 0);
		/* Unset WAIT bits */
		FUNC2(ssi->regs, REG_SSI_SOR, 0);
		/* Disable SSI -- software reset */
		FUNC1(ssi->regs, REG_SSI_SCR, SSI_SCR_SSIEN, 0);
	}
}