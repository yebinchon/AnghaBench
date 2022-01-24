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
struct vm_area_struct {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_pcm_substream*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			    struct vm_area_struct *vma)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;

	FUNC0(rtd->dev, "PCM: mmap\n");
	return FUNC1(substream, vma);
}