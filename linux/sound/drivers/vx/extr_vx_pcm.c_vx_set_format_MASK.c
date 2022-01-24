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
struct vx_pipe {int dummy; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {int channels; int rate; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int HEADER_FMT_16BITS ; 
 unsigned int HEADER_FMT_24BITS ; 
 unsigned int HEADER_FMT_BASE ; 
 unsigned int HEADER_FMT_INTEL ; 
 unsigned int HEADER_FMT_MONO ; 
 unsigned int HEADER_FMT_UPTO11 ; 
 unsigned int HEADER_FMT_UPTO32 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vx_core*,struct vx_pipe*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct vx_core *chip, struct vx_pipe *pipe,
			 struct snd_pcm_runtime *runtime)
{
	unsigned int header = HEADER_FMT_BASE;

	if (runtime->channels == 1)
		header |= HEADER_FMT_MONO;
	if (FUNC1(runtime->format))
		header |= HEADER_FMT_INTEL;
	if (runtime->rate < 32000 && runtime->rate > 11025)
		header |= HEADER_FMT_UPTO32;
	else if (runtime->rate <= 11025)
		header |= HEADER_FMT_UPTO11;

	switch (FUNC2(runtime->format)) {
	// case 8: break;
	case 16: header |= HEADER_FMT_16BITS; break;
	case 24: header |= HEADER_FMT_24BITS; break;
	default : 
		FUNC0();
		return -EINVAL;
	}

	return FUNC3(chip, pipe, header);
}