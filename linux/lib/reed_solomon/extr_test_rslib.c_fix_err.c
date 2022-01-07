
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void fix_err(uint16_t *data, int nerrs, uint16_t *corr, int *errlocs)
{
 int i;

 for (i = 0; i < nerrs; i++)
  data[errlocs[i]] ^= corr[i];
}
