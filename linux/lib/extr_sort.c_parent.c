
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t parent(size_t i, unsigned int lsbit, size_t size)
{
 i -= size;
 i -= size & -(i & lsbit);
 return i / 2;
}
