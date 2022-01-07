
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int HDA_MAX_CODECS ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static unsigned int azx_command_addr(u32 cmd)
{
 unsigned int addr = cmd >> 28;

 if (snd_BUG_ON(addr >= HDA_MAX_CODECS))
  addr = 0;
 return addr;
}
