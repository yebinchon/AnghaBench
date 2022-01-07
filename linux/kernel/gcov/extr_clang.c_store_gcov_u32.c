
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static size_t store_gcov_u32(void *buffer, size_t off, u32 v)
{
 u32 *data;

 if (buffer) {
  data = buffer + off;
  *data = v;
 }

 return sizeof(*data);
}
