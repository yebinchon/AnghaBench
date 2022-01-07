
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct at73c213_board_info* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct snd_card {char* driver; char* shortname; int longname; struct snd_at73c213* private_data; } ;
struct snd_at73c213 {int irq; int ssc; struct at73c213_board_info* board; struct spi_device* spi; } ;
struct at73c213_board_info {int ssc_id; char* shortname; int dac_clk; } ;


 int ENXIO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_dbg (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct snd_card*) ;
 int snd_at73c213_dev_init (struct snd_card*,struct spi_device*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (TYPE_1__*,int,char*,int ,int,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (int ,char*,char*,int) ;
 int ssc_free (int ) ;
 int ssc_request (int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int snd_at73c213_probe(struct spi_device *spi)
{
 struct snd_card *card;
 struct snd_at73c213 *chip;
 struct at73c213_board_info *board;
 int retval;
 char id[16];

 board = spi->dev.platform_data;
 if (!board) {
  dev_dbg(&spi->dev, "no platform_data\n");
  return -ENXIO;
 }

 if (!board->dac_clk) {
  dev_dbg(&spi->dev, "no DAC clk\n");
  return -ENXIO;
 }

 if (IS_ERR(board->dac_clk)) {
  dev_dbg(&spi->dev, "no DAC clk\n");
  return PTR_ERR(board->dac_clk);
 }


 snprintf(id, sizeof id, "at73c213_%d", board->ssc_id);
 retval = snd_card_new(&spi->dev, -1, id, THIS_MODULE,
         sizeof(struct snd_at73c213), &card);
 if (retval < 0)
  goto out;

 chip = card->private_data;
 chip->spi = spi;
 chip->board = board;

 chip->ssc = ssc_request(board->ssc_id);
 if (IS_ERR(chip->ssc)) {
  dev_dbg(&spi->dev, "could not get ssc%d device\n",
    board->ssc_id);
  retval = PTR_ERR(chip->ssc);
  goto out_card;
 }

 retval = snd_at73c213_dev_init(card, spi);
 if (retval)
  goto out_ssc;

 strcpy(card->driver, "at73c213");
 strcpy(card->shortname, board->shortname);
 sprintf(card->longname, "%s on irq %d", card->shortname, chip->irq);

 retval = snd_card_register(card);
 if (retval)
  goto out_ssc;

 dev_set_drvdata(&spi->dev, card);

 goto out;

out_ssc:
 ssc_free(chip->ssc);
out_card:
 snd_card_free(card);
out:
 return retval;
}
