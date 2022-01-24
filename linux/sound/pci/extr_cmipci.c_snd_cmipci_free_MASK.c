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
struct cmipci {scalar_t__ irq; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CH_CAPT ; 
 int /*<<< orphan*/  CM_CH_PLAY ; 
 int /*<<< orphan*/  CM_ENSPDOUT ; 
 int /*<<< orphan*/  CM_FM_EN ; 
 int /*<<< orphan*/  CM_REG_FUNCTRL0 ; 
 int /*<<< orphan*/  CM_REG_FUNCTRL1 ; 
 int /*<<< orphan*/  CM_REG_INT_HLDCLR ; 
 int /*<<< orphan*/  CM_REG_LEGACY_CTRL ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct cmipci*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmipci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmipci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmipci*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cmipci *cm)
{
	if (cm->irq >= 0) {
		FUNC5(cm, CM_REG_MISC_CTRL, CM_FM_EN);
		FUNC5(cm, CM_REG_LEGACY_CTRL, CM_ENSPDOUT);
		FUNC8(cm, CM_REG_INT_HLDCLR, 0);  /* disable ints */
		FUNC4(cm, CM_CH_PLAY);
		FUNC4(cm, CM_CH_CAPT);
		FUNC8(cm, CM_REG_FUNCTRL0, 0); /* disable channels */
		FUNC8(cm, CM_REG_FUNCTRL1, 0);

		/* reset mixer */
		FUNC7(cm, 0, 0);

		FUNC0(cm->irq, cm);
	}

	FUNC6(cm);
	FUNC3(cm->pci);
	FUNC2(cm->pci);
	FUNC1(cm);
	return 0;
}