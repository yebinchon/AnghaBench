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
struct snd_pcm {int dummy; } ;
struct hdspm {TYPE_1__* card; int /*<<< orphan*/  pci; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t HDSPM_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static int FUNC3(struct hdspm *hdspm)
{
	struct snd_pcm *pcm;
	size_t wanted;

	pcm = hdspm->pcm;

	wanted = HDSPM_DMA_AREA_BYTES;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV_SG,
					      FUNC1(hdspm->pci),
					      wanted, wanted);
	FUNC0(hdspm->card->dev, " Preallocated %zd Bytes\n", wanted);
	return 0;
}