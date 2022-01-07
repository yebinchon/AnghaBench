
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {scalar_t__ io; } ;


 int HPPRORESET_OFF ;
 int HPPRORESET_ON ;
 scalar_t__ HP_PROR ;
 int TIME_PRO_RESET ;
 int TIME_PRO_RESET_DONE ;
 int msleep (int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void reset_proteus(struct snd_msnd *chip)
{
 outb(HPPRORESET_ON, chip->io + HP_PROR);
 msleep(TIME_PRO_RESET);
 outb(HPPRORESET_OFF, chip->io + HP_PROR);
 msleep(TIME_PRO_RESET_DONE);
}
