#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vx_core {scalar_t__ type; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ VX_TYPE_VXPOCKET ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,char const* const*) ; 
 struct vx_core* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	static const char * const texts_mic[3] = {
		"Digital", "Line", "Mic"
	};
	static const char * const texts_vx2[2] = {
		"Digital", "Analog"
	};
	struct vx_core *chip = FUNC1(kcontrol);

	if (chip->type >= VX_TYPE_VXPOCKET)
		return FUNC0(uinfo, 1, 3, texts_mic);
	else
		return FUNC0(uinfo, 1, 2, texts_vx2);
}