
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int flags; } ;
typedef enum tep_flag { ____Placeholder_tep_flag } tep_flag ;



void tep_clear_flag(struct tep_handle *tep, enum tep_flag flag)
{
 if (tep)
  tep->flags &= ~flag;
}
