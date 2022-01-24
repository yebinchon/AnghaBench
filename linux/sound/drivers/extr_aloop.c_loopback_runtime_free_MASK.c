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
struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loopback_pcm*) ; 

__attribute__((used)) static void FUNC1(struct snd_pcm_runtime *runtime)
{
	struct loopback_pcm *dpcm = runtime->private_data;
	FUNC0(dpcm);
}