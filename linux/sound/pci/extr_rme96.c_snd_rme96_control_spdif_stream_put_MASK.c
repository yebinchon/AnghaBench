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
typedef  int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rme96 {int wcreg_spdif_stream; int wcreg; int /*<<< orphan*/  lock; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ RME96_IO_CONTROL_REGISTER ; 
 int RME96_WCR_DOLBY ; 
 int RME96_WCR_EMP ; 
 int RME96_WCR_PRO ; 
 struct rme96* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct rme96 *rme96 = FUNC0(kcontrol);
	int change;
	u32 val;
	
	val = FUNC1(&ucontrol->value.iec958);
	FUNC2(&rme96->lock);
	change = val != rme96->wcreg_spdif_stream;
	rme96->wcreg_spdif_stream = val;
	rme96->wcreg &= ~(RME96_WCR_PRO | RME96_WCR_DOLBY | RME96_WCR_EMP);
	rme96->wcreg |= val;
	FUNC4(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
	FUNC3(&rme96->lock);
	return change;
}