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
typedef  scalar_t__ u32 ;
struct snd_pcm_runtime {unsigned int rate; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsnd_priv*,struct rsnd_dai_stream*,unsigned int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct rsnd_dai_stream*) ; 
 struct snd_pcm_runtime* FUNC2 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static void FUNC3(struct rsnd_priv *priv,
				       struct rsnd_dai_stream *io,
				       unsigned int in_rate,
				       unsigned int out_rate,
				       u32 *in, u32 *out, u32 *en)
{
	struct snd_pcm_runtime *runtime = FUNC2(io);
	unsigned int target_rate;
	u32 *target_val;
	u32 _in;
	u32 _out;
	u32 _en;

	/* default = SSI WS */
	_in =
	_out = FUNC1(io);

	target_rate = 0;
	target_val = NULL;
	_en = 0;
	if (runtime->rate != in_rate) {
		target_rate = out_rate;
		target_val  = &_out;
	} else if (runtime->rate != out_rate) {
		target_rate = in_rate;
		target_val  = &_in;
	}

	if (target_rate)
		FUNC0(priv, io,
					     target_rate,
					     target_val, &_en);

	if (in)
		*in = _in;
	if (out)
		*out = _out;
	if (en)
		*en = _en;
}