
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav {int dummy; } ;


 int snd_mtpav_send_byte (struct mtpav*,int) ;

__attribute__((used)) static void snd_mtpav_portscan(struct mtpav *chip)
{
 u8 p;

 for (p = 0; p < 8; p++) {
  snd_mtpav_send_byte(chip, 0xf5);
  snd_mtpav_send_byte(chip, p);
  snd_mtpav_send_byte(chip, 0xfe);
 }
}
