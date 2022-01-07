
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BUG () ;
 unsigned int DT_BLK ;
 unsigned int DT_CHR ;
 unsigned int DT_DIR ;
 unsigned int DT_FIFO ;
 unsigned int DT_LNK ;
 unsigned int DT_REG ;
 unsigned int DT_SOCK ;
__attribute__((used)) static unsigned int vfs_dent_type(uint8_t type)
{
 switch (type) {
 case 129:
  return DT_REG;
 case 132:
  return DT_DIR;
 case 130:
  return DT_LNK;
 case 134:
  return DT_BLK;
 case 133:
  return DT_CHR;
 case 131:
  return DT_FIFO;
 case 128:
  return DT_SOCK;
 default:
  BUG();
 }
 return 0;
}
