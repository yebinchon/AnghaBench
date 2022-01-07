
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct firmware const firmware ;
struct echoaudio {struct firmware const** fw_cache; TYPE_2__* card; TYPE_1__* pci; } ;
typedef int name ;
struct TYPE_6__ {char* data; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int dev; } ;


 TYPE_3__* card_fw ;
 int dev_dbg (int ,char*,char*) ;
 int dev_err (int ,char*,int) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int get_firmware(const struct firmware **fw_entry,
   struct echoaudio *chip, const short fw_index)
{
 int err;
 char name[30];
 dev_dbg(chip->card->dev,
  "firmware requested: %s\n", card_fw[fw_index].data);
 snprintf(name, sizeof(name), "ea/%s", card_fw[fw_index].data);
 err = request_firmware(fw_entry, name, &chip->pci->dev);
 if (err < 0)
  dev_err(chip->card->dev,
   "get_firmware(): Firmware not available (%d)\n", err);




 return err;
}
