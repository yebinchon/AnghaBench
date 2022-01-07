
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int bswap_64 (int ) ;

void mem_bswap_64(void *src, int byte_size)
{
 u64 *m = src;

 while (byte_size > 0) {
  *m = bswap_64(*m);
  byte_size -= sizeof(u64);
  ++m;
 }
}
