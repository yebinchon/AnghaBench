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
struct hdac_stream {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; } ;
struct azx_dev {int dummy; } ;
struct azx {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  substream; } ;
struct TYPE_3__ {scalar_t__ (* position_check ) (struct azx*,struct azx_dev*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct azx_dev*) ; 
 struct azx* FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct azx_dev* FUNC5 (struct hdac_stream*) ; 
 scalar_t__ FUNC6 (struct azx*,struct azx_dev*) ; 

__attribute__((used)) static void FUNC7(struct hdac_bus *bus, struct hdac_stream *s)
{
	struct azx *chip = FUNC1(bus);
	struct azx_dev *azx_dev = FUNC5(s);

	/* check whether this IRQ is really acceptable */
	if (!chip->ops->position_check ||
	    chip->ops->position_check(chip, azx_dev)) {
		FUNC4(&bus->reg_lock);
		FUNC2(FUNC0(azx_dev)->substream);
		FUNC3(&bus->reg_lock);
	}
}