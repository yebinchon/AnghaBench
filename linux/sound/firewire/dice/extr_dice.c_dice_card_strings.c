
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vendor ;
typedef int u32 ;
struct snd_dice {TYPE_1__* unit; struct snd_card* card; } ;
struct snd_card {char* driver; char* shortname; char* mixername; int longname; } ;
struct fw_device {int* config_rom; int max_speed; } ;
typedef int model ;
struct TYPE_2__ {int* directory; int device; } ;


 int BUILD_BUG_ON (int) ;
 int CSR_MODEL ;
 int CSR_VENDOR ;
 int GLOBAL_NICK_NAME ;
 int NICK_NAME_SIZE ;
 char* dev_name (int *) ;
 int fw_csr_string (int*,int ,char*,int) ;
 struct fw_device* fw_parent_device (TYPE_1__*) ;
 int snd_dice_transaction_read_global (struct snd_dice*,int ,char*,int) ;
 int snprintf (int ,int,char*,char*,char*,int,char*,int) ;
 int strcpy (char*,char*) ;
 int swab32s (int *) ;

__attribute__((used)) static void dice_card_strings(struct snd_dice *dice)
{
 struct snd_card *card = dice->card;
 struct fw_device *dev = fw_parent_device(dice->unit);
 char vendor[32], model[32];
 unsigned int i;
 int err;

 strcpy(card->driver, "DICE");

 strcpy(card->shortname, "DICE");
 BUILD_BUG_ON(NICK_NAME_SIZE < sizeof(card->shortname));
 err = snd_dice_transaction_read_global(dice, GLOBAL_NICK_NAME,
            card->shortname,
            sizeof(card->shortname));
 if (err >= 0) {

  BUILD_BUG_ON(sizeof(card->shortname) % 4 != 0);
  for (i = 0; i < sizeof(card->shortname); i += 4)
   swab32s((u32 *)&card->shortname[i]);
  card->shortname[sizeof(card->shortname) - 1] = '\0';
 }

 strcpy(vendor, "?");
 fw_csr_string(dev->config_rom + 5, CSR_VENDOR, vendor, sizeof(vendor));
 strcpy(model, "?");
 fw_csr_string(dice->unit->directory, CSR_MODEL, model, sizeof(model));
 snprintf(card->longname, sizeof(card->longname),
   "%s %s (serial %u) at %s, S%d",
   vendor, model, dev->config_rom[4] & 0x3fffff,
   dev_name(&dice->unit->device), 100 << dev->max_speed);

 strcpy(card->mixername, "DICE");
}
