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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct snd_pcm_hw_constraint_ranges* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_pcm_hw_constraint_ranges {int /*<<< orphan*/  mask; int /*<<< orphan*/  ranges; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
				  struct snd_pcm_hw_rule *rule)
{
	struct snd_pcm_hw_constraint_ranges *r = rule->private;
	return FUNC1(FUNC0(params, rule->var),
				   r->count, r->ranges, r->mask);
}