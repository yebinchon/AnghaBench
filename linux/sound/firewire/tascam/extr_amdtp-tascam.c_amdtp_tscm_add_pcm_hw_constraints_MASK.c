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
struct snd_pcm_runtime {int dummy; } ;
struct amdtp_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amdtp_stream*,struct snd_pcm_runtime*) ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct amdtp_stream *s,
				      struct snd_pcm_runtime *runtime)
{
	int err;

	/*
	 * Our implementation allows this protocol to deliver 24 bit sample in
	 * 32bit data channel.
	 */
	err = FUNC1(runtime, 0, 32, 24);
	if (err < 0)
		return err;

	return FUNC0(s, runtime);
}