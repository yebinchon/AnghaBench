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
struct cmipci_pcm {int fmt; int /*<<< orphan*/  ch; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; scalar_t__ can_multi_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CHB3D ; 
 int /*<<< orphan*/  CM_CHB3D5C ; 
 int /*<<< orphan*/  CM_CHB3D6C ; 
 int /*<<< orphan*/  CM_CHB3D8C ; 
 int /*<<< orphan*/  CM_NXCHG ; 
 int /*<<< orphan*/  CM_REG_CHFORMAT ; 
 int /*<<< orphan*/  CM_REG_EXT_MISC ; 
 int /*<<< orphan*/  CM_REG_LEGACY_CTRL ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int /*<<< orphan*/  CM_XCHGDAC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cmipci *cm, struct cmipci_pcm *rec, int channels)
{
	if (channels > 2) {
		if (!cm->can_multi_ch || !rec->ch)
			return -EINVAL;
		if (rec->fmt != 0x03) /* stereo 16bit only */
			return -EINVAL;
	}

	if (cm->can_multi_ch) {
		FUNC2(&cm->reg_lock);
		if (channels > 2) {
			FUNC1(cm, CM_REG_LEGACY_CTRL, CM_NXCHG);
			FUNC1(cm, CM_REG_MISC_CTRL, CM_XCHGDAC);
		} else {
			FUNC0(cm, CM_REG_LEGACY_CTRL, CM_NXCHG);
			FUNC0(cm, CM_REG_MISC_CTRL, CM_XCHGDAC);
		}
		if (channels == 8)
			FUNC1(cm, CM_REG_EXT_MISC, CM_CHB3D8C);
		else
			FUNC0(cm, CM_REG_EXT_MISC, CM_CHB3D8C);
		if (channels == 6) {
			FUNC1(cm, CM_REG_CHFORMAT, CM_CHB3D5C);
			FUNC1(cm, CM_REG_LEGACY_CTRL, CM_CHB3D6C);
		} else {
			FUNC0(cm, CM_REG_CHFORMAT, CM_CHB3D5C);
			FUNC0(cm, CM_REG_LEGACY_CTRL, CM_CHB3D6C);
		}
		if (channels == 4)
			FUNC1(cm, CM_REG_CHFORMAT, CM_CHB3D);
		else
			FUNC0(cm, CM_REG_CHFORMAT, CM_CHB3D);
		FUNC3(&cm->reg_lock);
	}
	return 0;
}