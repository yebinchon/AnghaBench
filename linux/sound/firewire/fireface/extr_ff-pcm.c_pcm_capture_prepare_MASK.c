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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_ff* private_data; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  rate; } ;
struct snd_ff {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_ff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ff *ff = substream->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	FUNC1(&ff->mutex);

	err = FUNC3(ff, runtime->rate);
	if (err >= 0)
		FUNC0(&ff->tx_stream);

	FUNC2(&ff->mutex);

	return err;
}