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
struct snd_rawmidi_runtime {int buffer_size; char* buffer; int avail_min; int /*<<< orphan*/  lock; } ;
struct snd_rawmidi_params {int buffer_size; int avail_min; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_runtime*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi_runtime *runtime,
				 struct snd_rawmidi_params *params,
				 bool is_input)
{
	char *newbuf, *oldbuf;

	if (params->buffer_size < 32 || params->buffer_size > 1024L * 1024L)
		return -EINVAL;
	if (params->avail_min < 1 || params->avail_min > params->buffer_size)
		return -EINVAL;
	if (params->buffer_size != runtime->buffer_size) {
		newbuf = FUNC2(params->buffer_size, GFP_KERNEL);
		if (!newbuf)
			return -ENOMEM;
		FUNC3(&runtime->lock);
		oldbuf = runtime->buffer;
		runtime->buffer = newbuf;
		runtime->buffer_size = params->buffer_size;
		FUNC0(runtime, is_input);
		FUNC4(&runtime->lock);
		FUNC1(oldbuf);
	}
	runtime->avail_min = params->avail_min;
	return 0;
}