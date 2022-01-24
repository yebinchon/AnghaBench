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
struct axg_tdm_formatter {int enabled; int /*<<< orphan*/  sclk; int /*<<< orphan*/  lrclk; int /*<<< orphan*/  map; TYPE_2__* drv; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct axg_tdm_formatter *formatter)
{
	/* Do nothing if the formatter is already disabled */
	if (!formatter->enabled)
		return;

	formatter->drv->ops->disable(formatter->map);
	FUNC0(formatter->lrclk);
	FUNC0(formatter->sclk);
	formatter->enabled = false;
}