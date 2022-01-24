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
struct snd_pcxhr {int nb_streams_capt; int nb_streams_play; struct pcxhr_stream* playback_stream; struct pcxhr_stream* capture_stream; } ;
struct pcxhr_stream {scalar_t__ status; int /*<<< orphan*/  timer_period_frag; } ;
struct pcxhr_pipe {int first_audio; } ;
struct pcxhr_mgr {int num_cards; TYPE_1__* pci; int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/  lock; scalar_t__ granularity; struct snd_pcxhr** chip; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* PCXHR_STREAM_STATUS_RUNNING ; 
 scalar_t__ PCXHR_STREAM_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pcxhr_stream*) ; 
 int FUNC8 (struct pcxhr_mgr*,int,int,int) ; 
 int FUNC9 (struct snd_pcxhr*,struct pcxhr_stream*) ; 
 scalar_t__ FUNC10 (struct pcxhr_stream*,struct pcxhr_pipe**) ; 
 int FUNC11 (struct pcxhr_stream*) ; 

__attribute__((used)) static void FUNC12(struct pcxhr_mgr *mgr)
{
	int i, j, err;
	struct pcxhr_pipe *pipe;
	struct snd_pcxhr *chip;
	int capture_mask = 0;
	int playback_mask = 0;

#ifdef CONFIG_SND_DEBUG_VERBOSE
	ktime_t start_time, stop_time, diff_time;

	start_time = ktime_get();
#endif
	FUNC5(&mgr->setup_mutex);

	/* check the pipes concerned and build pipe_array */
	for (i = 0; i < mgr->num_cards; i++) {
		chip = mgr->chip[i];
		for (j = 0; j < chip->nb_streams_capt; j++) {
			if (FUNC10(&chip->capture_stream[j], &pipe))
				capture_mask |= (1 << pipe->first_audio);
		}
		for (j = 0; j < chip->nb_streams_play; j++) {
			if (FUNC10(&chip->playback_stream[j], &pipe)) {
				playback_mask |= (1 << pipe->first_audio);
				break;	/* add only once, as all playback
					 * streams of one chip use the same pipe
					 */
			}
		}
	}
	if (capture_mask == 0 && playback_mask == 0) {
		FUNC6(&mgr->setup_mutex);
		FUNC1(&mgr->pci->dev, "pcxhr_start_linked_stream : no pipes\n");
		return;
	}

	FUNC0(&mgr->pci->dev, "pcxhr_start_linked_stream : "
		    "playback_mask=%x capture_mask=%x\n",
		    playback_mask, capture_mask);

	/* synchronous stop of all the pipes concerned */
	err = FUNC8(mgr,  playback_mask, capture_mask, 0);
	if (err) {
		FUNC6(&mgr->setup_mutex);
		FUNC1(&mgr->pci->dev, "pcxhr_start_linked_stream : "
			   "error stop pipes (P%x C%x)\n",
			   playback_mask, capture_mask);
		return;
	}

	/* the dsp lost format and buffer info with the stop pipe */
	for (i = 0; i < mgr->num_cards; i++) {
		struct pcxhr_stream *stream;
		chip = mgr->chip[i];
		for (j = 0; j < chip->nb_streams_capt; j++) {
			stream = &chip->capture_stream[j];
			if (FUNC10(stream, &pipe)) {
				err = FUNC7(stream);
				err = FUNC11(stream);
			}
		}
		for (j = 0; j < chip->nb_streams_play; j++) {
			stream = &chip->playback_stream[j];
			if (FUNC10(stream, &pipe)) {
				err = FUNC7(stream);
				err = FUNC11(stream);
			}
		}
	}
	/* start all the streams */
	for (i = 0; i < mgr->num_cards; i++) {
		struct pcxhr_stream *stream;
		chip = mgr->chip[i];
		for (j = 0; j < chip->nb_streams_capt; j++) {
			stream = &chip->capture_stream[j];
			if (FUNC10(stream, &pipe))
				err = FUNC9(chip, stream);
		}
		for (j = 0; j < chip->nb_streams_play; j++) {
			stream = &chip->playback_stream[j];
			if (FUNC10(stream, &pipe))
				err = FUNC9(chip, stream);
		}
	}

	/* synchronous start of all the pipes concerned */
	err = FUNC8(mgr, playback_mask, capture_mask, 1);
	if (err) {
		FUNC6(&mgr->setup_mutex);
		FUNC1(&mgr->pci->dev, "pcxhr_start_linked_stream : "
			   "error start pipes (P%x C%x)\n",
			   playback_mask, capture_mask);
		return;
	}

	/* put the streams into the running state now
	 * (increment pointer by interrupt)
	 */
	FUNC5(&mgr->lock);
	for ( i =0; i < mgr->num_cards; i++) {
		struct pcxhr_stream *stream;
		chip = mgr->chip[i];
		for(j = 0; j < chip->nb_streams_capt; j++) {
			stream = &chip->capture_stream[j];
			if(stream->status == PCXHR_STREAM_STATUS_STARTED)
				stream->status = PCXHR_STREAM_STATUS_RUNNING;
		}
		for (j = 0; j < chip->nb_streams_play; j++) {
			stream = &chip->playback_stream[j];
			if (stream->status == PCXHR_STREAM_STATUS_STARTED) {
				/* playback will already have advanced ! */
				stream->timer_period_frag += mgr->granularity;
				stream->status = PCXHR_STREAM_STATUS_RUNNING;
			}
		}
	}
	FUNC6(&mgr->lock);

	FUNC6(&mgr->setup_mutex);

#ifdef CONFIG_SND_DEBUG_VERBOSE
	stop_time = ktime_get();
	diff_time = ktime_sub(stop_time, start_time);
	dev_dbg(&mgr->pci->dev, "***TRIGGER START*** TIME = %ld (err = %x)\n",
		    (long)(ktime_to_ns(diff_time)), err);
#endif
}