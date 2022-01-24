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
typedef  int snd_pcm_hw_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct snd_mask const*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
				  snd_pcm_hw_param_t var,
				  const struct snd_mask *val)
{
	int changed;
	changed = FUNC1(FUNC0(params, var), val);
	if (changed > 0) {
		params->cmask |= 1 << var;
		params->rmask |= 1 << var;
	}
	return changed;
}