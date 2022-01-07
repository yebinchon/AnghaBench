
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int long_size; } ;



int tep_get_long_size(struct tep_handle *tep)
{
 if (tep)
  return tep->long_size;
 return 0;
}
