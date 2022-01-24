#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct s3c_pcm_info {int sclk_per_fs; void* cclk; void* pclk; TYPE_2__* dma_playback; TYPE_3__* dma_capture; void* regs; int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
struct s3c_audio_pdata {int /*<<< orphan*/ * dma_filter; int /*<<< orphan*/  dma_playback; int /*<<< orphan*/  dma_capture; scalar_t__ (* cfg_gpio ) (struct platform_device*) ;} ;
struct resource {scalar_t__ start; } ;
struct TYPE_11__ {struct s3c_audio_pdata* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/ * dma_filter_fn ;
struct TYPE_13__ {int /*<<< orphan*/  filter_data; scalar_t__ addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  filter_data; scalar_t__ addr; } ;

/* Variables and functions */
 int FUNC0 (struct s3c_pcm_info*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 scalar_t__ S3C_PCM_RXFIFO ; 
 scalar_t__ S3C_PCM_TXFIFO ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct s3c_pcm_info*) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,struct resource*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 struct s3c_pcm_info* s3c_pcm ; 
 int /*<<< orphan*/  s3c_pcm_component ; 
 int /*<<< orphan*/ * s3c_pcm_dai ; 
 TYPE_3__* s3c_pcm_stereo_in ; 
 TYPE_2__* s3c_pcm_stereo_out ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct platform_device*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct s3c_pcm_info *pcm;
	struct resource *mem_res;
	struct s3c_audio_pdata *pcm_pdata;
	dma_filter_fn filter;
	int ret;

	/* Check for valid device index */
	if ((pdev->id < 0) || pdev->id >= FUNC0(s3c_pcm)) {
		FUNC5(&pdev->dev, "id %d out of range\n", pdev->id);
		return -EINVAL;
	}

	pcm_pdata = pdev->dev.platform_data;

	if (pcm_pdata && pcm_pdata->cfg_gpio && pcm_pdata->cfg_gpio(pdev)) {
		FUNC5(&pdev->dev, "Unable to configure gpio\n");
		return -EINVAL;
	}

	pcm = &s3c_pcm[pdev->id];
	pcm->dev = &pdev->dev;

	FUNC14(&pcm->lock);

	/* Default is 128fs */
	pcm->sclk_per_fs = 128;

	mem_res = FUNC10(pdev, IORESOURCE_MEM, 0);
	pcm->regs = FUNC8(&pdev->dev, mem_res);
	if (FUNC1(pcm->regs))
		return FUNC2(pcm->regs);

	pcm->cclk = FUNC7(&pdev->dev, "audio-bus");
	if (FUNC1(pcm->cclk)) {
		FUNC5(&pdev->dev, "failed to get audio-bus clock\n");
		return FUNC2(pcm->cclk);
	}
	ret = FUNC4(pcm->cclk);
	if (ret)
		return ret;

	/* record our pcm structure for later use in the callbacks */
	FUNC6(&pdev->dev, pcm);

	pcm->pclk = FUNC7(&pdev->dev, "pcm");
	if (FUNC1(pcm->pclk)) {
		FUNC5(&pdev->dev, "failed to get pcm clock\n");
		ret = FUNC2(pcm->pclk);
		goto err_dis_cclk;
	}
	ret = FUNC4(pcm->pclk);
	if (ret)
		goto err_dis_cclk;

	s3c_pcm_stereo_in[pdev->id].addr = mem_res->start + S3C_PCM_RXFIFO;
	s3c_pcm_stereo_out[pdev->id].addr = mem_res->start + S3C_PCM_TXFIFO;

	filter = NULL;
	if (pcm_pdata) {
		s3c_pcm_stereo_in[pdev->id].filter_data = pcm_pdata->dma_capture;
		s3c_pcm_stereo_out[pdev->id].filter_data = pcm_pdata->dma_playback;
		filter = pcm_pdata->dma_filter;
	}

	pcm->dma_capture = &s3c_pcm_stereo_in[pdev->id];
	pcm->dma_playback = &s3c_pcm_stereo_out[pdev->id];

	ret = FUNC13(&pdev->dev, filter,
						 NULL, NULL, NULL);
	if (ret) {
		FUNC5(&pdev->dev, "failed to get register DMA: %d\n", ret);
		goto err_dis_pclk;
	}

	FUNC12(&pdev->dev);

	ret = FUNC9(&pdev->dev, &s3c_pcm_component,
					 &s3c_pcm_dai[pdev->id], 1);
	if (ret != 0) {
		FUNC5(&pdev->dev, "failed to get register DAI: %d\n", ret);
		goto err_dis_pm;
	}

	return 0;

err_dis_pm:
	FUNC11(&pdev->dev);
err_dis_pclk:
	FUNC3(pcm->pclk);
err_dis_cclk:
	FUNC3(pcm->cclk);
	return ret;
}