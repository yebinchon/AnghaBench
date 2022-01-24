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
struct vm_area_struct {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pcm_mmap_prepare ) (struct snd_pcm_substream*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*,struct vm_area_struct*) ; 
 struct azx_pcm* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			struct vm_area_struct *area)
{
	struct azx_pcm *apcm = FUNC1(substream);
	struct azx *chip = apcm->chip;
	if (chip->ops->pcm_mmap_prepare)
		chip->ops->pcm_mmap_prepare(substream, area);
	return FUNC0(substream, area);
}