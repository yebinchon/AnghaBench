#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int ecn; void* interval; void* target; } ;
struct sta_info {TYPE_2__ cparams; TYPE_1__* local; TYPE_5__* sdata; } ;
struct TYPE_10__ {TYPE_4__* local; } ;
struct TYPE_9__ {TYPE_3__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  wake_tx_queue; } ;
struct TYPE_6__ {int num_sta; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int STA_SLOW_THRESHOLD ; 

__attribute__((used)) static void FUNC1(struct sta_info *sta, u32 thr)
{
	if (!sta->sdata->local->ops->wake_tx_queue)
		return;

	if (thr && thr < STA_SLOW_THRESHOLD * sta->local->num_sta) {
		sta->cparams.target = FUNC0(50);
		sta->cparams.interval = FUNC0(300);
		sta->cparams.ecn = false;
	} else {
		sta->cparams.target = FUNC0(20);
		sta->cparams.interval = FUNC0(100);
		sta->cparams.ecn = true;
	}
}