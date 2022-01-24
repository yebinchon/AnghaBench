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
struct snd_pmac {int /*<<< orphan*/  formats_ok; int /*<<< orphan*/  freqs_ok; } ;
struct snd_pcm_substream {int dummy; } ;
struct pmac_stream {int /*<<< orphan*/  cur_formats; int /*<<< orphan*/  cur_freqs; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmac_stream*) ; 
 struct pmac_stream* FUNC2 (struct snd_pmac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pmac *chip, struct pmac_stream *rec,
			      struct snd_pcm_substream *subs)
{
	struct pmac_stream *astr;

	FUNC1(rec);

	astr = FUNC2(chip, FUNC0(rec->stream));
	if (! astr)
		return -EINVAL;

	/* reset constraints */
	astr->cur_freqs = chip->freqs_ok;
	astr->cur_formats = chip->formats_ok;

	return 0;
}