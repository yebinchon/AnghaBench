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
struct snd_amd7930 {scalar_t__ regs; scalar_t__ irq; struct platform_device* op; } ;
struct platform_device {int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_amd7930*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_amd7930*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_amd7930*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_amd7930 *amd)
{
	struct platform_device *op = amd->op;

	FUNC0(amd);

	if (amd->irq)
		FUNC1(amd->irq, amd);

	if (amd->regs)
		FUNC3(&op->resource[0], amd->regs,
			   FUNC4(&op->resource[0]));

	FUNC2(amd);

	return 0;
}