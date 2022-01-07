
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;

__attribute__((used)) static int select_rom(unsigned int pitch)
{
 if (pitch > 0x00428f5c && pitch < 0x01b851ec) {

  return 1;
 } else if (pitch == 0x01d66666 || pitch == 0x01d66667) {

  return 2;
 } else if (pitch == 0x02000000) {

  return 3;
 } else if (pitch <= 0x08000000) {

  return 0;
 } else {
  return -ENOENT;
 }
}
