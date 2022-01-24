#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wm_coeff_ctl {int flags; int set; TYPE_3__* dsp; int /*<<< orphan*/  len; scalar_t__ enabled; int /*<<< orphan*/  cache; } ;
struct soc_bytes_ext {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/  pwr_lock; scalar_t__ running; } ;

/* Variables and functions */
 int EPERM ; 
 int WMFW_CTL_FLAG_VOLATILE ; 
 struct wm_coeff_ctl* FUNC0 (struct soc_bytes_ext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wm_coeff_ctl*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kctl,
			struct snd_ctl_elem_value *ucontrol)
{
	struct soc_bytes_ext *bytes_ext =
		(struct soc_bytes_ext *)kctl->private_value;
	struct wm_coeff_ctl *ctl = FUNC0(bytes_ext);
	char *p = ucontrol->value.bytes.data;
	int ret = 0;

	FUNC2(&ctl->dsp->pwr_lock);

	if (ctl->flags & WMFW_CTL_FLAG_VOLATILE)
		ret = -EPERM;
	else
		FUNC1(ctl->cache, p, ctl->len);

	ctl->set = 1;
	if (ctl->enabled && ctl->dsp->running)
		ret = FUNC4(ctl, p, ctl->len);

	FUNC3(&ctl->dsp->pwr_lock);

	return ret;
}