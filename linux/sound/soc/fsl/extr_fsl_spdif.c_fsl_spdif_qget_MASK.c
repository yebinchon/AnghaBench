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
struct spdif_mixer_control {int ready_buf; int /*<<< orphan*/  ctl_lock; int /*<<< orphan*/ * qsub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fsl_spdif_priv {struct spdif_mixer_control fsl_spdif_control; } ;

/* Variables and functions */
 int EAGAIN ; 
 int SPDIF_QSUB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_dai* FUNC1 (struct snd_kcontrol*) ; 
 struct fsl_spdif_priv* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dai *cpu_dai = FUNC1(kcontrol);
	struct fsl_spdif_priv *spdif_priv = FUNC2(cpu_dai);
	struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
	unsigned long flags;
	int ret = -EAGAIN;

	FUNC3(&ctrl->ctl_lock, flags);
	if (ctrl->ready_buf) {
		int idx = (ctrl->ready_buf - 1) * SPDIF_QSUB_SIZE;
		FUNC0(&ucontrol->value.bytes.data[0],
				&ctrl->qsub[idx], SPDIF_QSUB_SIZE);
		ret = 0;
	}
	FUNC4(&ctrl->ctl_lock, flags);

	return ret;
}