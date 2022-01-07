
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int probe_kernel_write (char*,char*,int) ;

__attribute__((used)) static int kgdb_ebin2mem(char *buf, char *mem, int count)
{
 int size = 0;
 char *c = buf;

 while (count-- > 0) {
  c[size] = *buf++;
  if (c[size] == 0x7d)
   c[size] = *buf++ ^ 0x20;
  size++;
 }

 return probe_kernel_write(mem, c, size);
}
