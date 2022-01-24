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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_modem {int dummy; } ;
struct atiixp_dma {int dummy; } ;
struct TYPE_2__ {struct atiixp_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atiixp_modem*,struct atiixp_dma*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct atiixp_modem* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct atiixp_modem *chip = FUNC2(substream);
	struct atiixp_dma *dma = substream->runtime->private_data;

	FUNC0(chip, dma, substream);
	FUNC1(substream);
	return 0;
}