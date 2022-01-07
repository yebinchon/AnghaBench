
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int flags; } ;



void tep_set_flag(struct tep_handle *tep, int flag)
{
 if (tep)
  tep->flags |= flag;
}
