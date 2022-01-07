
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 int IER ;
 int ISR ;
 int atiixp_read (struct atiixp*,int ) ;
 int atiixp_write (struct atiixp*,int ,int ) ;

__attribute__((used)) static int snd_atiixp_chip_stop(struct atiixp *chip)
{

 atiixp_write(chip, ISR, atiixp_read(chip, ISR));

 atiixp_write(chip, IER, 0);
 return 0;
}
