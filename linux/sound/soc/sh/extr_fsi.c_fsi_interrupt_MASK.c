#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; } ;
struct fsi_master {TYPE_1__ fsib; TYPE_1__ fsia; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AI_SHIFT ; 
 int /*<<< orphan*/  AO_SHIFT ; 
 int /*<<< orphan*/  BI_SHIFT ; 
 int /*<<< orphan*/  BO_SHIFT ; 
 int /*<<< orphan*/  IR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SOFT_RST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct fsi_master *master = data;
	u32 int_st = FUNC3(master);

	/* clear irq status */
	FUNC4(master, SOFT_RST, IR, 0);
	FUNC4(master, SOFT_RST, IR, IR);

	if (int_st & FUNC0(1, AO_SHIFT))
		FUNC5(&master->fsia.playback);
	if (int_st & FUNC0(1, BO_SHIFT))
		FUNC5(&master->fsib.playback);
	if (int_st & FUNC0(1, AI_SHIFT))
		FUNC5(&master->fsia.capture);
	if (int_st & FUNC0(1, BI_SHIFT))
		FUNC5(&master->fsib.capture);

	FUNC1(&master->fsia);
	FUNC1(&master->fsib);

	FUNC2(&master->fsia);
	FUNC2(&master->fsib);

	return IRQ_HANDLED;
}