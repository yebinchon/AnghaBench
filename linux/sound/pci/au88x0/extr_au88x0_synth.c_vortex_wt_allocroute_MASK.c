#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int parm0; int parm1; } ;
typedef  TYPE_2__ wt_voice_t ;
struct TYPE_11__ {int /*<<< orphan*/  mmio; TYPE_1__* card; TYPE_2__* wt_voice; } ;
typedef  TYPE_3__ vortex_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC11(vortex_t * vortex, int wt, int nr_ch)
{
	wt_voice_t *voice = &(vortex->wt_voice[wt]);
	int temp;

	//FIXME: WT audio routing.
	if (nr_ch) {
		FUNC8(vortex, wt, 1);
		FUNC7(vortex, wt, 1);
		FUNC10(vortex, wt, nr_ch - 1);
	} else
		FUNC7(vortex, wt, 0);
	
	/* Set mixdown mode. */
	FUNC9(vortex, wt, 1);
	/* Set other parameter registers. */
	FUNC6(vortex->mmio, FUNC3(0), 0x880000);
	//hwwrite(vortex->mmio, WT_GMODE(0), 0xffffffff);
#ifdef CHIP_AU8830
	hwwrite(vortex->mmio, WT_SRAMP(1), 0x880000);
	//hwwrite(vortex->mmio, WT_GMODE(1), 0xffffffff);
#endif
	FUNC6(vortex->mmio, FUNC2(wt, 0), 0);
	FUNC6(vortex->mmio, FUNC2(wt, 1), 0);
	FUNC6(vortex->mmio, FUNC2(wt, 2), 0);

	temp = FUNC5(vortex->mmio, FUNC2(wt, 3));
	FUNC4(vortex->card->dev, "WT PARM3: %x\n", temp);
	//hwwrite(vortex->mmio, WT_PARM(wt, 3), temp);

	FUNC6(vortex->mmio, FUNC0(wt, 0), 0);
	FUNC6(vortex->mmio, FUNC0(wt, 1), 0);
	FUNC6(vortex->mmio, FUNC0(wt, 2), 0);
	FUNC6(vortex->mmio, FUNC0(wt, 3), 0);

	FUNC4(vortex->card->dev, "WT GMODE: %x\n",
		FUNC5(vortex->mmio, FUNC1(wt)));

	FUNC6(vortex->mmio, FUNC2(wt, 2), 0xffffffff);
	FUNC6(vortex->mmio, FUNC2(wt, 3), 0xcff1c810);

	voice->parm0 = voice->parm1 = 0xcfb23e2f;
	FUNC6(vortex->mmio, FUNC2(wt, 0), voice->parm0);
	FUNC6(vortex->mmio, FUNC2(wt, 1), voice->parm1);
	FUNC4(vortex->card->dev, "WT GMODE 2 : %x\n",
		FUNC5(vortex->mmio, FUNC1(wt)));
	return 0;
}