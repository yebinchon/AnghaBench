
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_cs46xx {TYPE_3__* ba1; TYPE_1__* pci; } ;
struct firmware {int size; int data; } ;
struct TYPE_7__ {TYPE_2__* memory; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int dev; } ;


 int BA1_DWORD_SIZE ;
 int BA1_MEMORY_COUNT ;
 int EINVAL ;
 int ENOMEM ;
 int memcpy_le32 (TYPE_3__*,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 TYPE_3__* vmalloc (int) ;

__attribute__((used)) static int load_firmware(struct snd_cs46xx *chip)
{
 const struct firmware *fw;
 int i, size, err;

 err = request_firmware(&fw, "cs46xx/ba1", &chip->pci->dev);
 if (err < 0)
  return err;
 if (fw->size != sizeof(*chip->ba1)) {
  err = -EINVAL;
  goto error;
 }

 chip->ba1 = vmalloc(sizeof(*chip->ba1));
 if (!chip->ba1) {
  err = -ENOMEM;
  goto error;
 }

 memcpy_le32(chip->ba1, fw->data, sizeof(*chip->ba1));


 size = 0;
 for (i = 0; i < BA1_MEMORY_COUNT; i++)
  size += chip->ba1->memory[i].size;
 if (size > BA1_DWORD_SIZE * 4)
  err = -EINVAL;

 error:
 release_firmware(fw);
 return err;
}
