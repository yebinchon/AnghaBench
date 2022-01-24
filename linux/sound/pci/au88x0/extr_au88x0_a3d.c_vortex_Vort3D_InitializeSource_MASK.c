#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_14__ {int /*<<< orphan*/ * vortex; } ;
typedef  TYPE_3__ a3dsrc_t ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CoefTCDefault ; 
 int /*<<< orphan*/  GainTCDefault ; 
 int /*<<< orphan*/  HrtfTCDefault ; 
 int /*<<< orphan*/  ItdTCDefault ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(a3dsrc_t *a, int en, vortex_t *v)
{
	if (a->vortex == NULL) {
		FUNC6(v->card->dev,
			 "Vort3D_InitializeSource: A3D source not initialized\n");
		return;
	}
	if (en) {
		FUNC2(a);
		FUNC3(a, 0x11);
		FUNC4(a, HrtfTCDefault,
				     ItdTCDefault, GainTCDefault,
				     CoefTCDefault);
		/* Remark: zero gain is muted. */
		//a3dsrc_SetGainTarget(a,0,0);
		//a3dsrc_SetGainCurrent(a,0,0);
		FUNC1(a);
	} else {
		FUNC0(a);
		FUNC5(a);
	}
}