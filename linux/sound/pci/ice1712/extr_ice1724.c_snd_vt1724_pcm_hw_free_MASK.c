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
struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int /*<<< orphan*/  open_mutex; struct snd_pcm_substream** pcm_reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC3(substream);
	int i;

	FUNC0(&ice->open_mutex);
	/* unmark surround channels */
	for (i = 0; i < 3; i++)
		if (ice->pcm_reserved[i] == substream)
			ice->pcm_reserved[i] = NULL;
	FUNC1(&ice->open_mutex);
	return FUNC2(substream);
}