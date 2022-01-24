#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_chmap {size_t stream; TYPE_2__* pcm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int /*<<< orphan*/ * chmap_kctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_chmap*) ; 
 struct snd_pcm_chmap* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static void FUNC2(struct snd_kcontrol *kcontrol)
{
	struct snd_pcm_chmap *info = FUNC1(kcontrol);
	info->pcm->streams[info->stream].chmap_kctl = NULL;
	FUNC0(info);
}