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
struct fsi_stream {int /*<<< orphan*/  buff_sample_pos; } ;
struct fsi_priv {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 struct fsi_priv* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_priv*,int /*<<< orphan*/ ) ; 
 struct fsi_stream* FUNC2 (struct fsi_priv*,struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct fsi_priv *fsi = FUNC0(substream);
	struct fsi_stream *io = FUNC2(fsi, substream);

	return FUNC1(fsi, io->buff_sample_pos);
}