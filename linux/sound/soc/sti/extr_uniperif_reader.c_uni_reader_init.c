
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniperif {int irq_lock; int irq; int * hw; int * dai_ops; int state; int * dev; } ;
struct platform_device {int dev; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int UNIPERIF_STATE_STOPPED ;
 scalar_t__ UNIPERIF_TYPE_IS_TDM (struct uniperif*) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct uniperif*) ;
 int spin_lock_init (int *) ;
 int uni_reader_dai_ops ;
 int uni_reader_irq_handler ;
 int uni_reader_pcm_hw ;
 int uni_tdm_hw ;

int uni_reader_init(struct platform_device *pdev,
      struct uniperif *reader)
{
 int ret = 0;

 reader->dev = &pdev->dev;
 reader->state = UNIPERIF_STATE_STOPPED;
 reader->dai_ops = &uni_reader_dai_ops;

 if (UNIPERIF_TYPE_IS_TDM(reader))
  reader->hw = &uni_tdm_hw;
 else
  reader->hw = &uni_reader_pcm_hw;

 ret = devm_request_irq(&pdev->dev, reader->irq,
          uni_reader_irq_handler, IRQF_SHARED,
          dev_name(&pdev->dev), reader);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request IRQ\n");
  return -EBUSY;
 }

 spin_lock_init(&reader->irq_lock);

 return 0;
}
