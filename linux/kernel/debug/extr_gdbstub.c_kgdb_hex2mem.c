
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex_to_bin (int ) ;
 int probe_kernel_write (char*,char*,int) ;

int kgdb_hex2mem(char *buf, char *mem, int count)
{
 char *tmp_raw;
 char *tmp_hex;





 tmp_raw = buf + count * 2;

 tmp_hex = tmp_raw - 1;
 while (tmp_hex >= buf) {
  tmp_raw--;
  *tmp_raw = hex_to_bin(*tmp_hex--);
  *tmp_raw |= hex_to_bin(*tmp_hex--) << 4;
 }

 return probe_kernel_write(mem, tmp_raw, count);
}
