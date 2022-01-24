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
struct snd_pcm_runtime {int period_size; int channels; } ;
struct rsnd_ssi {int byte_per_period; int next_period_byte; scalar_t__ byte_pos; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 struct snd_pcm_runtime* FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_ssi* FUNC1 (struct rsnd_mod*) ; 
 int FUNC2 (struct rsnd_mod*,struct rsnd_dai_stream*,struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int FUNC4 (struct snd_pcm_runtime*,int) ; 

__attribute__((used)) static int FUNC5(struct rsnd_mod *mod,
			     struct rsnd_dai_stream *io,
			     struct rsnd_priv *priv)
{
	struct snd_pcm_runtime *runtime = FUNC0(io);
	struct rsnd_ssi *ssi = FUNC1(mod);

	if (!FUNC3(mod, io)) {
		ssi->byte_pos		= 0;
		ssi->byte_per_period	= runtime->period_size *
					  runtime->channels *
					  FUNC4(runtime, 1);
		ssi->next_period_byte	= ssi->byte_per_period;
	}

	return FUNC2(mod, io, priv);
}