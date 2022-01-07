
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mtpav {scalar_t__ port; } ;


 scalar_t__ CREG ;
 scalar_t__ DREG ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_mtpav_mputreg(struct mtpav *chip, u16 reg, u8 val)
{
 if (reg == DREG || reg == CREG)
  outb(val, chip->port + reg);
}
