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
struct snd_pcm_group {int dummy; } ;
struct action_ops {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct action_ops const*,struct snd_pcm_substream*,int,int) ; 
 int FUNC1 (struct action_ops const*,struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_group*,struct snd_pcm_substream*) ; 
 struct snd_pcm_group* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(const struct action_ops *ops,
			  struct snd_pcm_substream *substream,
			  int state)
{
	struct snd_pcm_group *group;
	int res;

	group = FUNC3(substream);
	if (group)
		res = FUNC0(ops, substream, state, 1);
	else
		res = FUNC1(ops, substream, state);
	FUNC2(group, substream);
	return res;
}