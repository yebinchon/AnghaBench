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
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct hdsp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int EIO ; 
 char* FUNC0 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct hdsp* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			       int channel, unsigned long pos,
			       unsigned long count)
{
	struct hdsp *hdsp = FUNC3(substream);
	char *channel_buf;

	channel_buf = FUNC0 (hdsp, substream->pstr->stream, channel);
	if (FUNC2(!channel_buf))
		return -EIO;
	FUNC1(channel_buf + pos, 0, count);
	return 0;
}