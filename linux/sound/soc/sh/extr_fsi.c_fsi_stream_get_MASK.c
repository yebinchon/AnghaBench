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
struct fsi_stream {int dummy; } ;
struct fsi_priv {struct fsi_stream capture; struct fsi_stream playback; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 

__attribute__((used)) static inline struct fsi_stream *FUNC1(struct fsi_priv *fsi,
					struct snd_pcm_substream *substream)
{
	return FUNC0(substream) ? &fsi->playback : &fsi->capture;
}