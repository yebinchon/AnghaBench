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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct loopback_pcm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ integer; scalar_t__ openmax; scalar_t__ openmin; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct loopback_pcm {TYPE_2__* loopback; struct loopback_cable* cable; } ;
struct TYPE_3__ {int /*<<< orphan*/  rate_max; int /*<<< orphan*/  rate_min; } ;
struct loopback_cable {TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  cable_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_interval*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
		     struct snd_pcm_hw_rule *rule)
{
	struct loopback_pcm *dpcm = rule->private;
	struct loopback_cable *cable = dpcm->cable;
	struct snd_interval t;

	FUNC1(&dpcm->loopback->cable_lock);
	t.min = cable->hw.rate_min;
	t.max = cable->hw.rate_max;
	FUNC2(&dpcm->loopback->cable_lock);
        t.openmin = t.openmax = 0;
        t.integer = 0;
	return FUNC3(FUNC0(params, rule->var), &t);
}