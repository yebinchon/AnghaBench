
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int size; int data; } ;
struct TYPE_2__ {int dev; } ;


 TYPE_1__* pd ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int spu_disable () ;
 int spu_enable () ;
 int spu_memload (int ,int ,int ) ;
 int spu_reset () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int load_aica_firmware(void)
{
 int err;
 const struct firmware *fw_entry;
 spu_reset();
 err = request_firmware(&fw_entry, "aica_firmware.bin", &pd->dev);
 if (unlikely(err))
  return err;

 spu_disable();
 spu_memload(0, fw_entry->data, fw_entry->size);
 spu_enable();
 release_firmware(fw_entry);
 return err;
}
