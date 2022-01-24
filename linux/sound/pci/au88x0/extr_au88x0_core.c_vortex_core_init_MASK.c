#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  lock; TYPE_1__* card; int /*<<< orphan*/  mmio; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VORTEX_CTRL ; 
 int /*<<< orphan*/  VORTEX_ENGINE_CTRL ; 
 int /*<<< orphan*/  VORTEX_IRQ_SOURCE ; 
 int /*<<< orphan*/  VORTEX_IRQ_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(vortex_t *vortex)
{

	FUNC0(vortex->card->dev, "init started\n");
	/* Hardware Init. */
	FUNC2(vortex->mmio, VORTEX_CTRL, 0xffffffff);
	FUNC3(5);
	FUNC2(vortex->mmio, VORTEX_CTRL,
		FUNC1(vortex->mmio, VORTEX_CTRL) & 0xffdfffff);
	FUNC3(5);
	/* Reset IRQ flags */
	FUNC2(vortex->mmio, VORTEX_IRQ_SOURCE, 0xffffffff);
	FUNC1(vortex->mmio, VORTEX_IRQ_STAT);

	FUNC8(vortex);

#ifdef CHIP_AU8830
	hwwrite(vortex->mmio, VORTEX_CTRL,
		hwread(vortex->mmio, VORTEX_CTRL) | 0x1000000);
#endif

	/* Init audio engine. */
	FUNC7(vortex);
	FUNC2(vortex->mmio, VORTEX_ENGINE_CTRL, 0x0);	//, 0xc83c7e58, 0xc5f93e58
	FUNC6(vortex);
	/* Init processing blocks. */
	FUNC10(vortex);
	FUNC11(vortex);
	FUNC14(vortex);
#ifndef CHIP_AU8820
	FUNC9(vortex);
	FUNC13(vortex, 48000, 1);
	FUNC5(vortex);
#endif
#ifndef CHIP_AU8810
	FUNC15(vortex);
#endif
	// Moved to au88x0.c
	//vortex_connect_default(vortex, 1);

	FUNC12(vortex, 0x90);
	// Enable Interrupts.
	// vortex_enable_int() must be first !!
	//  hwwrite(vortex->mmio, VORTEX_IRQ_CTRL, 0);
	// vortex_enable_int(vortex);
	//vortex_enable_timer_int(vortex);
	//vortex_disable_timer_int(vortex);

	FUNC0(vortex->card->dev, "init.... done.\n");
	FUNC4(&vortex->lock);

	return 0;
}