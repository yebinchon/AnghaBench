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
struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcxhr_stream {int channels; int /*<<< orphan*/  format; } ;
struct pcxhr_mgr {int /*<<< orphan*/  setup_mutex; } ;
typedef  int /*<<< orphan*/  snd_pcm_format_t ;
struct TYPE_2__ {struct pcxhr_stream* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_pcxhr* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *subs,
			   struct snd_pcm_hw_params *hw)
{
	struct snd_pcxhr *chip = FUNC6(subs);
	struct pcxhr_mgr *mgr = chip->mgr;
	struct pcxhr_stream *stream = subs->runtime->private_data;
	snd_pcm_format_t format;
	int err;
	int channels;

	/* set up channels */
	channels = FUNC3(hw);

	/*  set up format for the stream */
	format = FUNC4(hw);

	FUNC0(&mgr->setup_mutex);

	stream->channels = channels;
	stream->format = format;

	/* allocate buffer */
	err = FUNC5(subs, FUNC2(hw));

	FUNC1(&mgr->setup_mutex);

	return err;
}