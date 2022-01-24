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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {int /*<<< orphan*/  offset; } ;
typedef  int snd_pcm_uframes_t ;
struct TYPE_2__ {int buffer_size; } ;

/* Variables and functions */
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  D_USR ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct snd_dbri* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_dbri *dbri = FUNC3(substream);
	struct dbri_streaminfo *info = FUNC0(dbri, substream);
	snd_pcm_uframes_t ret;

	ret = FUNC1(substream->runtime, info->offset)
		% substream->runtime->buffer_size;
	FUNC2(D_USR, "I/O pointer: %ld frames of %ld.\n",
		ret, substream->runtime->buffer_size);
	return ret;
}