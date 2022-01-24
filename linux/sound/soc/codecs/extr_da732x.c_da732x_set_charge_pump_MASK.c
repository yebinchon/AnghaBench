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
 int DA723X_CP_DIS ; 
 int DA732X_CP_1MHZ ; 
 int DA732X_CP_BOOST ; 
 int DA732X_CP_CLK_DIS ; 
 int DA732X_CP_CLK_EN ; 
 int DA732X_CP_CTRL_CPVDD1 ; 
 int DA732X_CP_EN ; 
 int DA732X_CP_MANAGE_MAGNITUDE ; 
#define  DA732X_DISABLE_CP 129 
#define  DA732X_ENABLE_CP 128 
 int DA732X_HP_CP_DIS ; 
 int DA732X_HP_CP_EN ; 
 int DA732X_HP_CP_PULSESKIP ; 
 int DA732X_HP_CP_REG ; 
 int /*<<< orphan*/  DA732X_REG_CLK_EN2 ; 
 int /*<<< orphan*/  DA732X_REG_CP_CTRL1 ; 
 int /*<<< orphan*/  DA732X_REG_CP_CTRL2 ; 
 int /*<<< orphan*/  DA732X_REG_CP_CTRL3 ; 
 int /*<<< orphan*/  DA732X_REG_CP_HP2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component, int state)
{
	switch (state) {
	case DA732X_ENABLE_CP:
		FUNC1(component, DA732X_REG_CLK_EN2, DA732X_CP_CLK_EN);
		FUNC1(component, DA732X_REG_CP_HP2, DA732X_HP_CP_EN |
			      DA732X_HP_CP_REG | DA732X_HP_CP_PULSESKIP);
		FUNC1(component, DA732X_REG_CP_CTRL1, DA732X_CP_EN |
			      DA732X_CP_CTRL_CPVDD1);
		FUNC1(component, DA732X_REG_CP_CTRL2,
			      DA732X_CP_MANAGE_MAGNITUDE | DA732X_CP_BOOST);
		FUNC1(component, DA732X_REG_CP_CTRL3, DA732X_CP_1MHZ);
		break;
	case DA732X_DISABLE_CP:
		FUNC1(component, DA732X_REG_CLK_EN2, DA732X_CP_CLK_DIS);
		FUNC1(component, DA732X_REG_CP_HP2, DA732X_HP_CP_DIS);
		FUNC1(component, DA732X_REG_CP_CTRL1, DA723X_CP_DIS);
		break;
	default:
		FUNC0("Wrong charge pump state\n");
		break;
	}
}