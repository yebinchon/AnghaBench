
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CACHE_FLUSH_IS_SAFE ;
 int EINVAL ;
 int flush_icache_range (unsigned long,unsigned long) ;
 int kgdb_ebin2mem (char*,char*,unsigned long) ;
 scalar_t__ kgdb_hex2long (char**,unsigned long*) ;
 int kgdb_hex2mem (char*,char*,unsigned long) ;
 char* remcom_in_buffer ;

__attribute__((used)) static int write_mem_msg(int binary)
{
 char *ptr = &remcom_in_buffer[1];
 unsigned long addr;
 unsigned long length;
 int err;

 if (kgdb_hex2long(&ptr, &addr) > 0 && *(ptr++) == ',' &&
     kgdb_hex2long(&ptr, &length) > 0 && *(ptr++) == ':') {
  if (binary)
   err = kgdb_ebin2mem(ptr, (char *)addr, length);
  else
   err = kgdb_hex2mem(ptr, (char *)addr, length);
  if (err)
   return err;
  if (CACHE_FLUSH_IS_SAFE)
   flush_icache_range(addr, addr + length);
  return 0;
 }

 return -EINVAL;
}
