#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mmio; TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NR_WT ; 
 int NR_WT_PB ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(vortex_t * vortex, unsigned char reg, int wt,
		 u32 val)
{
	int ecx;

	if ((reg == 5) || ((reg >= 7) && (reg <= 10)) || (reg == 0xc)) {
		if (wt >= (NR_WT / NR_WT_PB)) {
			FUNC10(vortex->card->dev,
				 "WT SetReg: bank out of range. reg=0x%x, wt=%d\n",
				 reg, wt);
			return 0;
		}
	} else {
		if (wt >= NR_WT) {
			FUNC9(vortex->card->dev,
				"WT SetReg: voice out of range\n");
			return 0;
		}
	}
	if (reg > 0xc)
		return 0;

	switch (reg) {
		/* Voice specific parameters */
	case 0:		/* running */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_RUN(wt), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC7(wt), val);
		return 0xc;
	case 1:		/* param 0 */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_PARM(wt,0), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC6(wt, 0), val);
		return 0xc;
	case 2:		/* param 1 */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_PARM(wt,1), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC6(wt, 1), val);
		return 0xc;
	case 3:		/* param 2 */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_PARM(wt,2), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC6(wt, 2), val);
		return 0xc;
	case 4:		/* param 3 */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_PARM(wt,3), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC6(wt, 3), val);
		return 0xc;
	case 6:		/* mute */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_MUTE(wt), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC5(wt), val);
		return 0xc;
	case 0xb:
			/* delay */
		/*
		pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n",
		       WT_DELAY(wt,0), (int)val);
		*/
		FUNC11(vortex->mmio, FUNC2(wt, 3), val);
		FUNC11(vortex->mmio, FUNC2(wt, 2), val);
		FUNC11(vortex->mmio, FUNC2(wt, 1), val);
		FUNC11(vortex->mmio, FUNC2(wt, 0), val);
		return 0xc;
		/* Global WT block parameters */
	case 5:		/* sramp */
		ecx = FUNC8(wt);
		break;
	case 8:		/* aramp */
		ecx = FUNC0(wt);
		break;
	case 9:		/* mramp */
		ecx = FUNC4(wt);
		break;
	case 0xa:		/* ctrl */
		ecx = FUNC1(wt);
		break;
	case 0xc:		/* ds_reg */
		ecx = FUNC3(wt);
		break;
	default:
		return 0;
	}
	/*
	pr_debug( "vortex: WT SetReg(0x%x) = 0x%08x\n", ecx, (int)val);
	*/
	FUNC11(vortex->mmio, ecx, val);
	return 1;
}