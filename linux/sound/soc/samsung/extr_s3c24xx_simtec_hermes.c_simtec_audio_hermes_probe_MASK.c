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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_soc_machine_simtec_aic33 ; 

__attribute__((used)) static int FUNC2(struct platform_device *pd)
{
	FUNC0(&pd->dev, "probing....\n");
	return FUNC1(pd, &snd_soc_machine_simtec_aic33);
}