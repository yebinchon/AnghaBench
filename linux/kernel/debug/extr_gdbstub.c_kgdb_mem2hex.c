
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex_byte_pack (char*,char) ;
 int probe_kernel_read (char*,char*,int) ;

char *kgdb_mem2hex(char *mem, char *buf, int count)
{
 char *tmp;
 int err;





 tmp = buf + count;

 err = probe_kernel_read(tmp, mem, count);
 if (err)
  return ((void*)0);
 while (count > 0) {
  buf = hex_byte_pack(buf, *tmp);
  tmp++;
  count--;
 }
 *buf = 0;

 return buf;
}
