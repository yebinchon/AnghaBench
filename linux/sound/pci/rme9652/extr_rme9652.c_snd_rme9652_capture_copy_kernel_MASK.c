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
struct snd_rme9652 {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct TYPE_2__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,unsigned long) ; 
 char* FUNC1 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct snd_rme9652* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
					   int channel, unsigned long pos,
					   void *dst, unsigned long count)
{
	struct snd_rme9652 *rme9652 = FUNC3(substream);
	char *channel_buf;

	channel_buf = FUNC1(rme9652,
						      substream->pstr->stream,
						      channel);
	if (FUNC2(!channel_buf))
		return -EIO;
	FUNC0(dst, channel_buf + pos, count);
	return 0;
}