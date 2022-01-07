
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CHI32_VECTOR_BUSY ;
 int CHI32_VECTOR_REG ;
 int EBUSY ;
 int VECTOR_BUSY_TIMEOUT ;
 int dev_err (int ,char*) ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int set_dsp_register (struct echoaudio*,int ,int ) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int send_vector(struct echoaudio *chip, u32 command)
{
 int i;

 wmb();


 for (i = 0; i < VECTOR_BUSY_TIMEOUT; i++) {
  if (!(get_dsp_register(chip, CHI32_VECTOR_REG) &
        CHI32_VECTOR_BUSY)) {
   set_dsp_register(chip, CHI32_VECTOR_REG, command);

   return 0;
  }
  udelay(1);
 }

 dev_err(chip->card->dev, "timeout on send_vector\n");
 return -EBUSY;
}
