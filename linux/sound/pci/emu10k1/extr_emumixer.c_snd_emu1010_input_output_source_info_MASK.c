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
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {TYPE_1__* card_capabilities; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ emu_model; } ;

/* Variables and functions */
 scalar_t__ EMU_MODEL_EMU1616 ; 
 int /*<<< orphan*/  emu1010_src_texts ; 
 int /*<<< orphan*/  emu1616_src_texts ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
						struct snd_ctl_elem_info *uinfo)
{
	struct snd_emu10k1 *emu = FUNC1(kcontrol);

	if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1616)
		return FUNC0(uinfo, 1, 49, emu1616_src_texts);
	else
		return FUNC0(uinfo, 1, 53, emu1010_src_texts);
}