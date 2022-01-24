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
struct snd_pcm_hw_params {int cmask; int rmask; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int openmin; int openmax; unsigned int min; unsigned int max; scalar_t__ integer; scalar_t__ empty; } ;
typedef  int snd_pcm_hw_param_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params*,int) ; 
 struct snd_mask* FUNC3 (struct snd_pcm_hw_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_interval*) ; 
 int FUNC5 (struct snd_interval*,struct snd_interval*) ; 
 int FUNC6 (struct snd_interval*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_mask*) ; 
 int FUNC8 (struct snd_mask*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_hw_params *params,
				 snd_pcm_hw_param_t var, unsigned int val,
				 int dir)
{
	int changed;
	if (FUNC1(var)) {
		struct snd_mask *m = FUNC3(params, var);
		if (val == 0 && dir < 0) {
			changed = -EINVAL;
			FUNC7(m);
		} else {
			if (dir > 0)
				val++;
			else if (dir < 0)
				val--;
			changed = FUNC8(FUNC3(params, var), val);
		}
	} else if (FUNC0(var)) {
		struct snd_interval *i = FUNC2(params, var);
		if (val == 0 && dir < 0) {
			changed = -EINVAL;
			FUNC4(i);
		} else if (dir == 0)
			changed = FUNC6(i, val);
		else {
			struct snd_interval t;
			t.openmin = 1;
			t.openmax = 1;
			t.empty = 0;
			t.integer = 0;
			if (dir < 0) {
				t.min = val - 1;
				t.max = val;
			} else {
				t.min = val;
				t.max = val+1;
			}
			changed = FUNC5(i, &t);
		}
	} else
		return -EINVAL;
	if (changed > 0) {
		params->cmask |= 1 << var;
		params->rmask |= 1 << var;
	}
	return changed;
}