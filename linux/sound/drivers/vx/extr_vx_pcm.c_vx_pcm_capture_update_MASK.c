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
struct vx_pipe {int hw_ptr; int align; int transferred; int period_bytes; int /*<<< orphan*/  running; } ;
struct vx_core {int chip_status; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; } ;

/* Variables and functions */
 int DMA_READ_ALIGN ; 
 int /*<<< orphan*/  IRQ_CONNECT_STREAM_NEXT ; 
 int VX_STAT_IS_STALE ; 
 int FUNC0 (struct snd_pcm_runtime*,int) ; 
 int FUNC1 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*,int) ; 
 int FUNC5 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct vx_core*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vx_core*) ; 

__attribute__((used)) static void FUNC8(struct vx_core *chip, struct snd_pcm_substream *subs,
				  struct vx_pipe *pipe)
{
	int size, space, count;
	struct snd_pcm_runtime *runtime = subs->runtime;

	if (!pipe->running || (chip->chip_status & VX_STAT_IS_STALE))
		return;

	size = runtime->buffer_size - FUNC1(runtime);
	if (! size)
		return;
	size = FUNC0(runtime, size);
	space = FUNC5(chip, pipe);
	if (space < 0)
		goto _error;
	if (size > space)
		size = space;
	size = (size / 3) * 3; /* align to 3 bytes */
	if (size < DMA_READ_ALIGN)
		goto _error;

	/* keep the last 6 bytes, they will be read after disconnection */
	count = size - DMA_READ_ALIGN;
	/* read bytes until the current pointer reaches to the aligned position
	 * for word-transfer
	 */
	while (count > 0) {
		if ((pipe->hw_ptr % pipe->align) == 0)
			break;
		if (FUNC7(chip) < 0)
			goto _error;
		FUNC3(chip, runtime, pipe);
		count -= 3;
	}
	if (count > 0) {
		/* ok, let's accelerate! */
		int align = pipe->align * 3;
		space = (count / align) * align;
		if (space > 0) {
			FUNC4(chip, runtime, pipe, space);
			count -= space;
		}
	}
	/* read the rest of bytes */
	while (count > 0) {
		if (FUNC7(chip) < 0)
			goto _error;
		FUNC3(chip, runtime, pipe);
		count -= 3;
	}
	/* disconnect the host, SIZE_HBUF command always switches to the stream mode */
	FUNC6(chip, IRQ_CONNECT_STREAM_NEXT);
	/* read the last pending 6 bytes */
	count = DMA_READ_ALIGN;
	while (count > 0) {
		FUNC3(chip, runtime, pipe);
		count -= 3;
	}
	/* update the position */
	pipe->transferred += size;
	if (pipe->transferred >= pipe->period_bytes) {
		pipe->transferred %= pipe->period_bytes;
		FUNC2(subs);
	}
	return;

 _error:
	/* disconnect the host, SIZE_HBUF command always switches to the stream mode */
	FUNC6(chip, IRQ_CONNECT_STREAM_NEXT);
	return;
}