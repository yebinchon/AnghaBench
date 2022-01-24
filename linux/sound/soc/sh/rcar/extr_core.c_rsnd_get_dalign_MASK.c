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

/* Variables and functions */
 scalar_t__ FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC3 (struct rsnd_dai_stream*) ; 
 struct snd_pcm_runtime* FUNC4 (struct rsnd_dai_stream*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

u32 FUNC6(struct rsnd_mod *mod, struct rsnd_dai_stream *io)
{
	struct rsnd_mod *ssiu = FUNC3(io);
	struct rsnd_mod *target;
	struct snd_pcm_runtime *runtime = FUNC4(io);

	/*
	 * *Hardware* L/R and *Software* L/R are inverted for 16bit data.
	 *	    31..16 15...0
	 *	HW: [L ch] [R ch]
	 *	SW: [R ch] [L ch]
	 * We need to care about inversion timing to control
	 * Playback/Capture correctly.
	 * The point is [DVC] needs *Hardware* L/R, [MEM] needs *Software* L/R
	 *
	 * sL/R : software L/R
	 * hL/R : hardware L/R
	 * (*)  : conversion timing
	 *
	 * Playback
	 *	     sL/R (*) hL/R     hL/R     hL/R      hL/R     hL/R
	 *	[MEM] -> [SRC] -> [DVC] -> [CMD] -> [SSIU] -> [SSI] -> codec
	 *
	 * Capture
	 *	     hL/R     hL/R      hL/R     hL/R     hL/R (*) sL/R
	 *	codec -> [SSI] -> [SSIU] -> [SRC] -> [DVC] -> [CMD] -> [MEM]
	 */
	if (FUNC0(io)) {
		struct rsnd_mod *src = FUNC2(io);

		target = src ? src : ssiu;
	} else {
		struct rsnd_mod *cmd = FUNC1(io);

		target = cmd ? cmd : ssiu;
	}

	/* Non target mod or non 16bit needs normal DALIGN */
	if ((FUNC5(runtime->format) != 16) ||
	    (mod != target))
		return 0x76543210;
	/* Target mod needs inverted DALIGN when 16bit */
	else
		return 0x67452301;
}