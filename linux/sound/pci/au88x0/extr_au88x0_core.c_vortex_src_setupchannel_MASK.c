#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
 scalar_t__ VORTEX_SRC_U0 ; 
 scalar_t__ VORTEX_SRC_U1 ; 
 scalar_t__ VORTEX_SRC_U2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char,int) ; 

__attribute__((used)) static void FUNC5(vortex_t * card, unsigned char src,
			unsigned int cr, unsigned int b, int sweep, int d,
			int dirplay, int sl, unsigned int tr, int thsource)
{
	// noplayback: d=2,4,7,0xa,0xb when using first 2 src's.
	// c: enables pitch sweep.
	// looks like g is c related. Maybe g is a sweep parameter ?
	// g = cvr
	// dirplay: 0 = recording, 1 = playback
	// d = src hw index.

	int esi, ebp = 0, esp10;

	FUNC2(card, src);

	if (sweep) {
		if ((tr & 0x10000) && (tr != 0x10000)) {
			tr = 0;
			esi = 0x7;
		} else {
			if ((((short)tr) < 0) && (tr != 0x8000)) {
				tr = 0;
				esi = 0x8;
			} else {
				tr = 1;
				esi = 0xc;
			}
		}
	} else {
		if ((cr & 0x10000) && (cr != 0x10000)) {
			tr = 0;	/*ebx = 0 */
			esi = 0x11 - ((cr >> 0xe) & 7);
			if (cr & 0x3fff)
				esi -= 1;
			else
				esi -= 2;
		} else {
			tr = 1;
			esi = 0xc;
		}
	}
	FUNC1(card, src);
	FUNC4(card, src, thsource);

	if ((dirplay == 0) && (sweep == 0)) {
		if (tr)
			esp10 = 0xf;
		else
			esp10 = 0xc;
		ebp = 0;
	} else {
		if (tr)
			ebp = 0xf;
		else
			ebp = 0xc;
		esp10 = 0;
	}
	FUNC0(card->mmio, VORTEX_SRC_U0 + (src << 2),
		(sl << 0x9) | (sweep << 0x8) | ((esi & 0xf) << 4) | d);
	/* 0xc0   esi=0xc c=f=0 d=0 */
	FUNC3(card, src, cr);
	FUNC0(card->mmio, VORTEX_SRC_U1 + (src << 2), b & 0xffff);
	/* 0   b=0 */
	FUNC0(card->mmio, VORTEX_SRC_U2 + (src << 2),
		(tr << 0x11) | (dirplay << 0x10) | (ebp << 0x8) | esp10);
	/* 0x30f00 e=g=1 esp10=0 ebp=f */
	//printk(KERN_INFO "vortex: SRC %d, d=0x%x, esi=0x%x, esp10=0x%x, ebp=0x%x\n", src, d, esi, esp10, ebp);
}