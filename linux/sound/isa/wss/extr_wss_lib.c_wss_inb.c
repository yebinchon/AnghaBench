
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct snd_wss {scalar_t__ port; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static inline u8 wss_inb(struct snd_wss *chip, u8 offset)
{
 return inb(chip->port + offset);
}
