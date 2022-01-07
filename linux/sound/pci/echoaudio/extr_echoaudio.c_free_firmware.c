
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void free_firmware(const struct firmware *fw_entry,
     struct echoaudio *chip)
{



 release_firmware(fw_entry);

}
