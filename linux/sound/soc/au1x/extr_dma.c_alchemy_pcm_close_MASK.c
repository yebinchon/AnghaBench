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
struct snd_pcm_substream {int stream; } ;
struct alchemy_pcm_ctx {TYPE_1__* stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; int /*<<< orphan*/ * substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct alchemy_pcm_ctx* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct alchemy_pcm_ctx *ctx = FUNC1(substream);
	int stype = substream->stream;

	ctx->stream[stype].substream = NULL;
	FUNC0(ctx->stream[stype].dma);

	return 0;
}