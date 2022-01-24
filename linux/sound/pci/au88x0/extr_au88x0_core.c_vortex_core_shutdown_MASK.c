#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* card; int /*<<< orphan*/  mmio; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VORTEX_CTRL ; 
 int /*<<< orphan*/  VORTEX_IRQ_CTRL ; 
 int /*<<< orphan*/  VORTEX_IRQ_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(vortex_t * vortex)
{

	FUNC0(vortex->card->dev, "shutdown started\n");
#ifndef CHIP_AU8820
	FUNC7(vortex);
	FUNC3(vortex);
#endif
	//vortex_disable_timer_int(vortex);
	FUNC6(vortex);
	FUNC5(vortex, 0);
	/* Reset all DMA fifos. */
	FUNC8(vortex);
	/* Erase all audio routes. */
	FUNC4(vortex);

	/* Disable MPU401 */
	//hwwrite(vortex->mmio, VORTEX_IRQ_CTRL, hwread(vortex->mmio, VORTEX_IRQ_CTRL) & ~IRQ_MIDI);
	//hwwrite(vortex->mmio, VORTEX_CTRL, hwread(vortex->mmio, VORTEX_CTRL) & ~CTRL_MIDI_EN);

	FUNC1(vortex->mmio, VORTEX_IRQ_CTRL, 0);
	FUNC1(vortex->mmio, VORTEX_CTRL, 0);
	FUNC2(5);
	FUNC1(vortex->mmio, VORTEX_IRQ_SOURCE, 0xffff);

	FUNC0(vortex->card->dev, "shutdown.... done.\n");
	return 0;
}