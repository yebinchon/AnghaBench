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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct idma_ctrl* private_data; } ;
struct idma_ctrl {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  idma_hardware ; 
 int /*<<< orphan*/  idma_irq ; 
 int /*<<< orphan*/  iis_irq ; 
 int /*<<< orphan*/  FUNC0 (struct idma_ctrl*) ; 
 struct idma_ctrl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct idma_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct idma_ctrl *prtd;
	int ret;

	FUNC4(substream, &idma_hardware);

	prtd = FUNC1(sizeof(struct idma_ctrl), GFP_KERNEL);
	if (prtd == NULL)
		return -ENOMEM;

	ret = FUNC3(idma_irq, iis_irq, 0, "i2s", prtd);
	if (ret < 0) {
		FUNC2("fail to claim i2s irq , ret = %d\n", ret);
		FUNC0(prtd);
		return ret;
	}

	FUNC5(&prtd->lock);

	runtime->private_data = prtd;

	return 0;
}