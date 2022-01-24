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
struct sof_ipc_pcm_params_reply {int dummy; } ;
struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* ipc_pcm_params ) (struct snd_sof_dev*,struct snd_pcm_substream*,struct sof_ipc_pcm_params_reply const*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_sof_dev*) ; 
 int FUNC1 (struct snd_sof_dev*,struct snd_pcm_substream*,struct sof_ipc_pcm_params_reply const*) ; 

__attribute__((used)) static inline int
FUNC2(struct snd_sof_dev *sdev,
		       struct snd_pcm_substream *substream,
		       const struct sof_ipc_pcm_params_reply *reply)
{
	return FUNC0(sdev)->ipc_pcm_params(sdev, substream, reply);
}