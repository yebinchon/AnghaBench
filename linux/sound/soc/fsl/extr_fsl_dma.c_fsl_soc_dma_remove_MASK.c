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
struct dma_object {int /*<<< orphan*/  irq; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 struct dma_object* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_object*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dma_object *dma = FUNC0(&pdev->dev);

	FUNC1(dma->channel);
	FUNC2(dma->irq);
	FUNC3(dma);

	return 0;
}