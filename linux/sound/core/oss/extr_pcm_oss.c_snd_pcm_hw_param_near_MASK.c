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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_param_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INT_MAX ; 
 scalar_t__ FUNC0 (int,int,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 struct snd_pcm_hw_params* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *pcm,
				 struct snd_pcm_hw_params *params,
				 snd_pcm_hw_param_t var, unsigned int best,
				 int *dir)
{
	struct snd_pcm_hw_params *save = NULL;
	int v;
	unsigned int saved_min;
	int last = 0;
	int min, max;
	int mindir, maxdir;
	int valdir = dir ? *dir : 0;
	/* FIXME */
	if (best > INT_MAX)
		best = INT_MAX;
	min = max = best;
	mindir = maxdir = valdir;
	if (maxdir > 0)
		maxdir = 0;
	else if (maxdir == 0)
		maxdir = -1;
	else {
		maxdir = 1;
		max--;
	}
	save = FUNC2(sizeof(*save), GFP_KERNEL);
	if (save == NULL)
		return -ENOMEM;
	*save = *params;
	saved_min = min;
	min = FUNC6(pcm, params, var, min, &mindir);
	if (min >= 0) {
		struct snd_pcm_hw_params *params1;
		if (max < 0)
			goto _end;
		if ((unsigned int)min == saved_min && mindir == valdir)
			goto _end;
		params1 = FUNC2(sizeof(*params1), GFP_KERNEL);
		if (params1 == NULL) {
			FUNC1(save);
			return -ENOMEM;
		}
		*params1 = *save;
		max = FUNC5(pcm, params1, var, max, &maxdir);
		if (max < 0) {
			FUNC1(params1);
			goto _end;
		}
		if (FUNC0(max, maxdir, best, valdir, min, mindir)) {
			*params = *params1;
			last = 1;
		}
		FUNC1(params1);
	} else {
		*params = *save;
		max = FUNC5(pcm, params, var, max, &maxdir);
		if (max < 0) {
			FUNC1(save);
			return max;
		}
		last = 1;
	}
 _end:
 	FUNC1(save);
	if (last)
		v = FUNC4(pcm, params, var, dir);
	else
		v = FUNC3(pcm, params, var, dir);
	return v;
}