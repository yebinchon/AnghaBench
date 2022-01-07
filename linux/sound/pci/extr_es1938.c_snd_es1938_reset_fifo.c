
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {int dummy; } ;


 int RESET ;
 int SLSB_REG (struct es1938*,int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void snd_es1938_reset_fifo(struct es1938 *chip)
{
 outb(2, SLSB_REG(chip, RESET));
 outb(0, SLSB_REG(chip, RESET));
}
