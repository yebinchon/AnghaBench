
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {TYPE_1__* card; scalar_t__* fw_cache; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,int) ;
 int release_firmware (scalar_t__) ;

__attribute__((used)) static void free_firmware_cache(struct echoaudio *chip)
{
}
