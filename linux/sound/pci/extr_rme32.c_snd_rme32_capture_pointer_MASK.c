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
struct rme32 {int capture_frlog; } ;
typedef  int snd_pcm_uframes_t ;

/* Variables and functions */
 struct rme32* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct rme32*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC2(struct snd_pcm_substream *substream)
{
	struct rme32 *rme32 = FUNC0(substream);
	return FUNC1(rme32) >> rme32->capture_frlog;
}