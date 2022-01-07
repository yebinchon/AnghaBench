
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct echoaudio {TYPE_2__* card; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ handshake; } ;


 int EBUSY ;
 int HANDSHAKE_TIMEOUT ;
 int barrier () ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int wait_handshake(struct echoaudio *chip)
{
 int i;


 for (i = 0; i < HANDSHAKE_TIMEOUT; i++) {

  barrier();
  if (chip->comm_page->handshake) {
   return 0;
  }
  udelay(1);
 }

 dev_err(chip->card->dev, "wait_handshake(): Timeout waiting for DSP\n");
 return -EBUSY;
}
