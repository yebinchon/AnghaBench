
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct azx* private_data; } ;
struct platform_device {int dev; } ;
struct azx {int dummy; } ;
struct hda_tegra {int probe_work; int * dev; struct azx chip; } ;


 unsigned int AZX_DCAPS_CORBRP_SELF_CLEAR ;
 unsigned int AZX_DCAPS_PM_RUNTIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int THIS_MODULE ;
 int azx_has_pm_runtime (struct azx*) ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct snd_card*) ;
 struct hda_tegra* devm_kzalloc (int *,int,int ) ;
 int hda_tegra_create (struct snd_card*,unsigned int const,struct hda_tegra*) ;
 int hda_tegra_init_clk (struct hda_tegra*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_forbid (int *) ;
 int schedule_work (int *) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (int *,int ,int ,int ,int ,struct snd_card**) ;

__attribute__((used)) static int hda_tegra_probe(struct platform_device *pdev)
{
 const unsigned int driver_flags = AZX_DCAPS_CORBRP_SELF_CLEAR |
       AZX_DCAPS_PM_RUNTIME;
 struct snd_card *card;
 struct azx *chip;
 struct hda_tegra *hda;
 int err;

 hda = devm_kzalloc(&pdev->dev, sizeof(*hda), GFP_KERNEL);
 if (!hda)
  return -ENOMEM;
 hda->dev = &pdev->dev;
 chip = &hda->chip;

 err = snd_card_new(&pdev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
      THIS_MODULE, 0, &card);
 if (err < 0) {
  dev_err(&pdev->dev, "Error creating card!\n");
  return err;
 }

 err = hda_tegra_init_clk(hda);
 if (err < 0)
  goto out_free;

 err = hda_tegra_create(card, driver_flags, hda);
 if (err < 0)
  goto out_free;
 card->private_data = chip;

 dev_set_drvdata(&pdev->dev, card);

 pm_runtime_enable(hda->dev);
 if (!azx_has_pm_runtime(chip))
  pm_runtime_forbid(hda->dev);

 schedule_work(&hda->probe_work);

 return 0;

out_free:
 snd_card_free(card);
 return err;
}
