#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct snd_pcm_runtime {scalar_t__ rate; } ;
struct TYPE_2__ {scalar_t__ val; } ;
struct rsnd_src {TYPE_1__ sync; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rsnd_dai_stream*) ; 
 struct snd_pcm_runtime* FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_src* FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 

__attribute__((used)) static u32 FUNC4(struct rsnd_dai_stream *io,
				 struct rsnd_mod *mod)
{
	struct snd_pcm_runtime *runtime = FUNC1(io);
	struct rsnd_src *src = FUNC2(mod);
	u32 convert_rate;

	if (!runtime)
		return 0;

	if (!FUNC3(mod))
		return FUNC0(io);

	convert_rate = src->sync.val;

	if (!convert_rate)
		convert_rate = FUNC0(io);

	if (!convert_rate)
		convert_rate = runtime->rate;

	return convert_rate;
}