#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ area; } ;
struct lola {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_2__ rb; TYPE_1__* bar; scalar_t__ initialized; } ;
struct TYPE_3__ {int /*<<< orphan*/  remap_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*) ; 
 int /*<<< orphan*/  FUNC4 (struct lola*) ; 
 int /*<<< orphan*/  FUNC5 (struct lola*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct lola *chip)
{
	if (chip->initialized)
		FUNC5(chip);
	FUNC4(chip);
	FUNC3(chip);
	if (chip->irq >= 0)
		FUNC0(chip->irq, (void *)chip);
	FUNC1(chip->bar[0].remap_addr);
	FUNC1(chip->bar[1].remap_addr);
	if (chip->rb.area)
		FUNC8(&chip->rb);
	FUNC7(chip->pci);
	FUNC6(chip->pci);
	FUNC2(chip);
}