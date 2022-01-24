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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L34_PDN_SDOUT ; 
 int /*<<< orphan*/  CS35L34_PWRCTL3 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, int tristate)
{

	struct snd_soc_component *component = dai->component;

	if (tristate)
		FUNC0(component, CS35L34_PWRCTL3,
					CS35L34_PDN_SDOUT, CS35L34_PDN_SDOUT);
	else
		FUNC0(component, CS35L34_PWRCTL3,
					CS35L34_PDN_SDOUT, 0);
	return 0;
}