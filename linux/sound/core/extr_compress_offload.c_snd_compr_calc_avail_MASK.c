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
struct snd_compr_stream {scalar_t__ direction; TYPE_1__* runtime; } ;
struct snd_compr_avail {size_t avail; int /*<<< orphan*/  tstamp; } ;
struct TYPE_2__ {scalar_t__ total_bytes_available; scalar_t__ state; size_t buffer_size; scalar_t__ total_bytes_transferred; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STATE_SETUP ; 
 scalar_t__ SND_COMPRESS_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_compr_avail*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_compr_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(struct snd_compr_stream *stream,
		struct snd_compr_avail *avail)
{
	FUNC0(avail, 0, sizeof(*avail));
	FUNC2(stream, &avail->tstamp);
	/* Still need to return avail even if tstamp can't be filled in */

	if (stream->runtime->total_bytes_available == 0 &&
			stream->runtime->state == SNDRV_PCM_STATE_SETUP &&
			stream->direction == SND_COMPRESS_PLAYBACK) {
		FUNC1("detected init and someone forgot to do a write\n");
		return stream->runtime->buffer_size;
	}
	FUNC1("app wrote %lld, DSP consumed %lld\n",
			stream->runtime->total_bytes_available,
			stream->runtime->total_bytes_transferred);
	if (stream->runtime->total_bytes_available ==
				stream->runtime->total_bytes_transferred) {
		if (stream->direction == SND_COMPRESS_PLAYBACK) {
			FUNC1("both pointers are same, returning full avail\n");
			return stream->runtime->buffer_size;
		} else {
			FUNC1("both pointers are same, returning no avail\n");
			return 0;
		}
	}

	avail->avail = stream->runtime->total_bytes_available -
			stream->runtime->total_bytes_transferred;
	if (stream->direction == SND_COMPRESS_PLAYBACK)
		avail->avail = stream->runtime->buffer_size - avail->avail;

	FUNC1("ret avail as %lld\n", avail->avail);
	return avail->avail;
}