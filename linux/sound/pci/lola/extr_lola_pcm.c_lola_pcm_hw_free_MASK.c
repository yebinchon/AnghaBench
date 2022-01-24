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
struct lola_stream {int dummy; } ;
struct lola_pcm {int dummy; } ;
struct lola {int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lola_pcm*,struct lola_stream*) ; 
 struct lola_pcm* FUNC1 (struct snd_pcm_substream*) ; 
 struct lola_stream* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*,struct lola_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pcm_substream*) ; 
 struct lola* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct lola *chip = FUNC7(substream);
	struct lola_pcm *pcm = FUNC1(substream);
	struct lola_stream *str = FUNC2(substream);

	FUNC4(&chip->open_mutex);
	FUNC3(chip, str);
	FUNC0(pcm, str);
	FUNC5(&chip->open_mutex);
	return FUNC6(substream);
}