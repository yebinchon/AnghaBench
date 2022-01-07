
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {scalar_t__ model; int subframe; TYPE_1__* awacs; } ;
struct TYPE_2__ {int codec_ctrl; } ;


 int MASK_NEWECMD ;
 scalar_t__ PMAC_SCREAMER ;
 int in_le32 (int *) ;
 int out_le32 (int *,int) ;
 int snd_pmac_screamer_wait (struct snd_pmac*) ;
 int snd_printd (char*) ;

__attribute__((used)) static void
snd_pmac_awacs_write(struct snd_pmac *chip, int val)
{
 long timeout = 5000000;

 if (chip->model == PMAC_SCREAMER)
  snd_pmac_screamer_wait(chip);
 out_le32(&chip->awacs->codec_ctrl, val | (chip->subframe << 22));
 while (in_le32(&chip->awacs->codec_ctrl) & MASK_NEWECMD) {
  if (! --timeout) {
   snd_printd("snd_pmac_awacs_write timeout\n");
   break;
  }
 }
}
