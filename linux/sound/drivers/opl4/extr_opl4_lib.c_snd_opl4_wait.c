
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int fm_port; } ;


 int OPL4_STATUS_BUSY ;
 int inb (int ) ;

__attribute__((used)) static inline void snd_opl4_wait(struct snd_opl4 *opl4)
{
 int timeout = 10;
 while ((inb(opl4->fm_port) & OPL4_STATUS_BUSY) && --timeout > 0)
  ;
}
