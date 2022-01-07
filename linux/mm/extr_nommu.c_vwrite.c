
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,unsigned long) ;

long vwrite(char *buf, char *addr, unsigned long count)
{

 if ((unsigned long) addr + count < count)
  count = -(unsigned long) addr;

 memcpy(addr, buf, count);
 return count;
}
