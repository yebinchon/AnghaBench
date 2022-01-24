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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct ringbuf_regs {int dummy; } ;
struct cygnus_aio_port {int portnum; struct ringbuf_regs capture_rb_regs; struct ringbuf_regs play_rb_regs; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ringbuf_regs FUNC0 (int) ; 
 struct ringbuf_regs FUNC1 (int) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct cygnus_aio_port* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct cygnus_aio_port *aio;
	struct ringbuf_regs *p_rbuf;
	int status = 0;

	aio = FUNC2(substream);

	/* Map the ssp portnum to a set of ring buffers. */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		p_rbuf = &aio->play_rb_regs;

		switch (aio->portnum) {
		case 0:
			*p_rbuf = FUNC1(0);
			break;
		case 1:
			*p_rbuf = FUNC1(2);
			break;
		case 2:
			*p_rbuf = FUNC1(4);
			break;
		case 3: /* SPDIF */
			*p_rbuf = FUNC1(6);
			break;
		default:
			status = -EINVAL;
		}
	} else {
		p_rbuf = &aio->capture_rb_regs;

		switch (aio->portnum) {
		case 0:
			*p_rbuf = FUNC0(0);
			break;
		case 1:
			*p_rbuf = FUNC0(2);
			break;
		case 2:
			*p_rbuf = FUNC0(4);
			break;
		default:
			status = -EINVAL;
		}
	}

	return status;
}