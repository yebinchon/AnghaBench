
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct snd_wss {scalar_t__ port; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void wss_outb(struct snd_wss *chip, u8 offset, u8 val)
{
 outb(val, chip->port + offset);
}
