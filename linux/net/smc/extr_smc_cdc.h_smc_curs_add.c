
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_host_cursor {int count; int wrap; } ;



__attribute__((used)) static inline void smc_curs_add(int size, union smc_host_cursor *curs,
    int value)
{
 curs->count += value;
 if (curs->count >= size) {
  curs->wrap++;
  curs->count -= size;
 }
}
