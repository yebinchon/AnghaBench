
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int ref_count; } ;



int tep_get_ref(struct tep_handle *tep)
{
 if (tep)
  return tep->ref_count;
 return 0;
}
