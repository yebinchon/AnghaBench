
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bytes; int area; } ;
struct snd_sof_dev {int dtrace_is_enabled; int dma_trace_pages; TYPE_1__ dmatp; TYPE_1__ dmatb; int trace_sleep; scalar_t__ first_boot; int dev; } ;


 int DMA_BUF_SIZE_FOR_TRACE ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int init_waitqueue_head (int *) ;
 int snd_dma_alloc_pages (int ,int ,int ,TYPE_1__*) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_sof_create_page_table (struct snd_sof_dev*,TYPE_1__*,int ,int ) ;
 int snd_sof_init_trace_ipc (struct snd_sof_dev*) ;
 int trace_debugfs_create (struct snd_sof_dev*) ;

int snd_sof_init_trace(struct snd_sof_dev *sdev)
{
 int ret;


 sdev->dtrace_is_enabled = 0;


 ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, sdev->dev,
      PAGE_SIZE, &sdev->dmatp);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: can't alloc page table for trace %d\n", ret);
  return ret;
 }


 ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV_SG, sdev->dev,
      DMA_BUF_SIZE_FOR_TRACE, &sdev->dmatb);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: can't alloc buffer for trace %d\n", ret);
  goto page_err;
 }


 ret = snd_sof_create_page_table(sdev, &sdev->dmatb, sdev->dmatp.area,
     sdev->dmatb.bytes);
 if (ret < 0)
  goto table_err;

 sdev->dma_trace_pages = ret;
 dev_dbg(sdev->dev, "dma_trace_pages: %d\n", sdev->dma_trace_pages);

 if (sdev->first_boot) {
  ret = trace_debugfs_create(sdev);
  if (ret < 0)
   goto table_err;
 }

 init_waitqueue_head(&sdev->trace_sleep);

 ret = snd_sof_init_trace_ipc(sdev);
 if (ret < 0)
  goto table_err;

 return 0;
table_err:
 sdev->dma_trace_pages = 0;
 snd_dma_free_pages(&sdev->dmatb);
page_err:
 snd_dma_free_pages(&sdev->dmatp);
 return ret;
}
