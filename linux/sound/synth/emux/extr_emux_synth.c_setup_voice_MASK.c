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
struct soundfont_voice_parm {int modatkhld; int moddelay; int pefe; int cutoff; int volatkhld; int voldelay; } ;
struct TYPE_4__ {struct soundfont_voice_parm parm; } ;
struct snd_emux_voice {int apan; int avol; int apitch; int ftarget; int ptarget; int vtarget; TYPE_2__ reg; TYPE_1__* zone; } ;
struct TYPE_3__ {TYPE_2__ v; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emux_voice*) ; 
 int* voltarget ; 

__attribute__((used)) static void
FUNC7(struct snd_emux_voice *vp)
{
	struct soundfont_voice_parm *parm;
	int pitch;

	/* copy the original register values */
	vp->reg = vp->zone->v;

#ifdef SNDRV_EMUX_USE_RAW_EFFECT
	snd_emux_setup_effect(vp);
#endif

	/* reset status */
	vp->apan = -1;
	vp->avol = -1;
	vp->apitch = -1;

	FUNC5(vp);
	FUNC4(vp);
	FUNC3(vp);

	parm = &vp->reg.parm;

	/* compute filter target and correct modulation parameters */
	if (FUNC2(parm->modatkhld) >= 0x80 && parm->moddelay >= 0x8000) {
		parm->moddelay = 0xbfff;
		pitch = (FUNC0(parm->pefe) << 4) + vp->apitch;
		if (pitch > 0xffff)
			pitch = 0xffff;
		/* calculate filter target */
		vp->ftarget = parm->cutoff + FUNC2(parm->pefe);
		FUNC1(vp->ftarget, 0, 255);
		vp->ftarget <<= 8;
	} else {
		vp->ftarget = parm->cutoff;
		vp->ftarget <<= 8;
		pitch = vp->apitch;
	}

	/* compute pitch target */
	if (pitch != 0xffff) {
		vp->ptarget = 1 << (pitch >> 12);
		if (pitch & 0x800) vp->ptarget += (vp->ptarget*0x102e)/0x2710;
		if (pitch & 0x400) vp->ptarget += (vp->ptarget*0x764)/0x2710;
		if (pitch & 0x200) vp->ptarget += (vp->ptarget*0x389)/0x2710;
		vp->ptarget += (vp->ptarget >> 1);
		if (vp->ptarget > 0xffff) vp->ptarget = 0xffff;
	} else
		vp->ptarget = 0xffff;

	if (FUNC2(parm->modatkhld) >= 0x80) {
		parm->modatkhld &= ~0xff;
		parm->modatkhld |= 0x7f;
	}

	/* compute volume target and correct volume parameters */
	vp->vtarget = 0;
#if 0 /* FIXME: this leads to some clicks.. */
	if (LO_BYTE(parm->volatkhld) >= 0x80 && parm->voldelay >= 0x8000) {
		parm->voldelay = 0xbfff;
		vp->vtarget = voltarget[vp->avol % 0x10] >> (vp->avol >> 4);
	}
#endif

	if (FUNC2(parm->volatkhld) >= 0x80) {
		parm->volatkhld &= ~0xff;
		parm->volatkhld |= 0x7f;
	}
}