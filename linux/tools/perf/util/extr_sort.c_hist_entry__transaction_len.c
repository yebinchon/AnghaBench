
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; int skip_for_len; } ;


 scalar_t__ strlen (scalar_t__) ;
 TYPE_1__* txbits ;

int hist_entry__transaction_len(void)
{
 int i;
 int len = 0;

 for (i = 0; txbits[i].name; i++) {
  if (!txbits[i].skip_for_len)
   len += strlen(txbits[i].name);
 }
 len += 4;
 return len;
}
