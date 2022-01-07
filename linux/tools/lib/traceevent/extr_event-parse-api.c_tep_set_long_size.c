
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int long_size; } ;



void tep_set_long_size(struct tep_handle *tep, int long_size)
{
 if (tep)
  tep->long_size = long_size;
}
