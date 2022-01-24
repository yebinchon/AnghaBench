#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  action_queue; int /*<<< orphan*/  count; scalar_t__ active; int /*<<< orphan*/  sync_queue; } ;

/* Variables and functions */
 int* DAC_LEFT ; 
 int* DAC_RIGHT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SAMPLE_CLEAR_REG ; 
 int /*<<< orphan*/  SAMPLE_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int q40_sc ; 
 TYPE_1__ write_sq ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!write_sq.active) {
	          /* playing was interrupted and sq_reset() has already cleared
		   * the sq variables, so better don't do anything here.
		   */
	           FUNC1(write_sq.sync_queue);
		   FUNC2(0,SAMPLE_ENABLE_REG); /* better safe */
		   goto exit;
	} else write_sq.active=0;
	write_sq.count--;
	FUNC0();

	if (q40_sc<2)
	      { /* there was nothing to play, disable irq */
		FUNC2(0,SAMPLE_ENABLE_REG);
		*DAC_LEFT=*DAC_RIGHT=127;
	      }
	FUNC1(write_sq.action_queue);

 exit:
	FUNC2(1,SAMPLE_CLEAR_REG);
}