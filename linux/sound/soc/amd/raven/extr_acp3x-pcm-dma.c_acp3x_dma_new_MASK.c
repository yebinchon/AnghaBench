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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  pcm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  MAX_BUFFER ; 
 int /*<<< orphan*/  MIN_BUFFER ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = FUNC1(rtd,
								    DRV_NAME);
	struct device *parent = component->dev->parent;
	FUNC0(rtd->pcm, SNDRV_DMA_TYPE_DEV,
					      parent, MIN_BUFFER, MAX_BUFFER);
	return 0;
}