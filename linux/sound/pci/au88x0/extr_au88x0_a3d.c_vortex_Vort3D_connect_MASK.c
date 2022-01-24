#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* mixxtlk; int /*<<< orphan*/ * mixplayb; TYPE_1__* card; int /*<<< orphan*/  fixed_res; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  MIX_DEFIGAIN ; 
 int /*<<< orphan*/  VOL_MIN ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(vortex_t * v, int en)
{
	int i;
	
// Disable AU8810 routes, since they seem to be wrong (in au8810.h).
#ifdef CHIP_AU8810
	return;
#endif
	
#if 1
	/* Alloc Xtalk mixin resources */
	v->mixxtlk[0] =
	    FUNC7(v, v->fixed_res, en, VORTEX_RESOURCE_MIXIN);
	if (v->mixxtlk[0] < 0) {
		FUNC6(v->card->dev,
			 "vortex_Vort3D: ERROR: not enough free mixer resources.\n");
		return;
	}
	v->mixxtlk[1] =
	    FUNC7(v, v->fixed_res, en, VORTEX_RESOURCE_MIXIN);
	if (v->mixxtlk[1] < 0) {
		FUNC6(v->card->dev,
			 "vortex_Vort3D: ERROR: not enough free mixer resources.\n");
		return;
	}
#endif

	/* Connect A3D -> XTALK */
	for (i = 0; i < 4; i++) {
		// 2 outputs per each A3D slice. 
		FUNC10(v, en, 0x11, FUNC0(i * 2), FUNC3(i));
		FUNC10(v, en, 0x11, FUNC0(i * 2) + 1, FUNC3(5 + i));
	}
#if 0
	vortex_route(v, en, 0x11, ADB_XTALKOUT(0), ADB_EQIN(2));
	vortex_route(v, en, 0x11, ADB_XTALKOUT(1), ADB_EQIN(3));
#else
	/* Connect XTalk -> mixer */
	FUNC10(v, en, 0x11, FUNC4(0), FUNC2(v->mixxtlk[0]));
	FUNC10(v, en, 0x11, FUNC4(1), FUNC2(v->mixxtlk[1]));
	FUNC8(v, en, v->mixxtlk[0], v->mixplayb[0], 0);
	FUNC8(v, en, v->mixxtlk[1], v->mixplayb[1], 0);
	FUNC9(v, v->mixplayb[0], v->mixxtlk[0],
				      en ? MIX_DEFIGAIN : VOL_MIN);
	FUNC9(v, v->mixplayb[1], v->mixxtlk[1],
				      en ? MIX_DEFIGAIN : VOL_MIN);
	if (FUNC5(v)) {
		FUNC8(v, en, v->mixxtlk[0],
					    v->mixplayb[2], 0);
		FUNC8(v, en, v->mixxtlk[1],
					    v->mixplayb[3], 0);
		FUNC9(v, v->mixplayb[2],
					      v->mixxtlk[0],
					      en ? MIX_DEFIGAIN : VOL_MIN);
		FUNC9(v, v->mixplayb[3],
					      v->mixxtlk[1],
					      en ? MIX_DEFIGAIN : VOL_MIN);
	}
#endif
}