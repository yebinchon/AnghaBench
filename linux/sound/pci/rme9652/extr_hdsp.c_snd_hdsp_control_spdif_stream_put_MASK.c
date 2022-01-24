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
struct hdsp {int creg_spdif_stream; int control_register; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HDSP_SPDIFEmphasis ; 
 int HDSP_SPDIFNonAudio ; 
 int HDSP_SPDIFProfessional ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct hdsp* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct hdsp *hdsp = FUNC2(kcontrol);
	int change;
	u32 val;

	val = FUNC1(&ucontrol->value.iec958);
	FUNC3(&hdsp->lock);
	change = val != hdsp->creg_spdif_stream;
	hdsp->creg_spdif_stream = val;
	hdsp->control_register &= ~(HDSP_SPDIFProfessional | HDSP_SPDIFNonAudio | HDSP_SPDIFEmphasis);
	FUNC0(hdsp, HDSP_controlRegister, hdsp->control_register |= val);
	FUNC4(&hdsp->lock);
	return change;
}