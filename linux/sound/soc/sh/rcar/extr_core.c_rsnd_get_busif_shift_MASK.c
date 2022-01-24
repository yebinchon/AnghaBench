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
typedef  int u32 ;
struct snd_pcm_runtime {int /*<<< orphan*/  format; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef  enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int RSND_MOD_CMD ; 
 int RSND_MOD_SRC ; 
 int RSND_MOD_SSIU ; 
 scalar_t__ FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*,int) ; 
 struct snd_pcm_runtime* FUNC3 (struct rsnd_dai_stream*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

u32 FUNC5(struct rsnd_dai_stream *io, struct rsnd_mod *mod)
{
	enum rsnd_mod_type playback_mods[] = {
		RSND_MOD_SRC,
		RSND_MOD_CMD,
		RSND_MOD_SSIU,
	};
	enum rsnd_mod_type capture_mods[] = {
		RSND_MOD_CMD,
		RSND_MOD_SRC,
		RSND_MOD_SSIU,
	};
	struct snd_pcm_runtime *runtime = FUNC3(io);
	struct rsnd_mod *tmod = NULL;
	enum rsnd_mod_type *mods =
		FUNC1(io) ?
		playback_mods : capture_mods;
	int i;

	/*
	 * This is needed for 24bit data
	 * We need to shift 8bit
	 *
	 * Linux 24bit data is located as 0x00******
	 * HW    24bit data is located as 0x******00
	 *
	 */
	if (FUNC4(runtime->format) != 24)
		return 0;

	for (i = 0; i < FUNC0(playback_mods); i++) {
		tmod = FUNC2(io, mods[i]);
		if (tmod)
			break;
	}

	if (tmod != mod)
		return 0;

	if (FUNC1(io))
		return  (0 << 20) | /* shift to Left */
			(8 << 16);  /* 8bit */
	else
		return  (1 << 20) | /* shift to Right */
			(8 << 16);  /* 8bit */
}