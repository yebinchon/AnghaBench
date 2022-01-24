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
struct snd_pcm_runtime {int dummy; } ;
struct rsnd_ssi {int /*<<< orphan*/  byte_pos; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_pcm_runtime* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC3 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC4(struct rsnd_mod *mod,
			    struct rsnd_dai_stream *io,
			    snd_pcm_uframes_t *pointer)
{
	struct rsnd_ssi *ssi = FUNC3(mod);
	struct snd_pcm_runtime *runtime = FUNC2(io);

	*pointer = FUNC1(runtime, FUNC0(ssi->byte_pos));

	return 0;
}