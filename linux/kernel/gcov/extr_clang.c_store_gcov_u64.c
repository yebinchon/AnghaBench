
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static size_t store_gcov_u64(void *buffer, size_t off, u64 v)
{
 u32 *data;

 if (buffer) {
  data = buffer + off;

  data[0] = (v & 0xffffffffUL);
  data[1] = (v >> 32);
 }

 return sizeof(*data) * 2;
}
