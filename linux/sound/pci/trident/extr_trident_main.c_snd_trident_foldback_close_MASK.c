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
struct snd_trident_voice {scalar_t__ foldback_chan; } ;
struct snd_trident {int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;

/* Variables and functions */
 scalar_t__ T4D_RCI ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC2(substream);
	struct snd_trident_voice *voice;
	struct snd_pcm_runtime *runtime = substream->runtime;
	voice = runtime->private_data;
	
	/* stop capture channel */
	FUNC3(&trident->reg_lock);
	FUNC1(0x00, FUNC0(trident, T4D_RCI + voice->foldback_chan));
	FUNC4(&trident->reg_lock);
	return 0;
}