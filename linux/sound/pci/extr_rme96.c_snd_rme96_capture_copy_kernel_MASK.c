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
struct snd_pcm_substream {int dummy; } ;
struct rme96 {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ RME96_IO_REC_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,unsigned long) ; 
 struct rme96* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC2(struct snd_pcm_substream *substream,
			      int channel, unsigned long pos,
			      void *dst, unsigned long count)
{
	struct rme96 *rme96 = FUNC1(substream);

	FUNC0(dst, rme96->iobase + RME96_IO_REC_BUFFER + pos, count);
	return 0;
}