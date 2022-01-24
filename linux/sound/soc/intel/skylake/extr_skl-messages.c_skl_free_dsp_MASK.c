#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  usage_count; int /*<<< orphan*/  state; } ;
struct skl_dev {TYPE_4__* dsp; TYPE_2__ cores; TYPE_1__* dsp_ops; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ lpe; } ;
struct TYPE_8__ {TYPE_3__ addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ ,struct skl_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC2 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct skl_dev*) ; 

int FUNC5(struct skl_dev *skl)
{
	struct hdac_bus *bus = FUNC2(skl);

	/* disable  ppcap interrupt */
	FUNC3(bus, false);

	skl->dsp_ops->cleanup(bus->dev, skl);

	FUNC1(skl->cores.state);
	FUNC1(skl->cores.usage_count);

	if (skl->dsp->addr.lpe)
		FUNC0(skl->dsp->addr.lpe);

	return 0;
}