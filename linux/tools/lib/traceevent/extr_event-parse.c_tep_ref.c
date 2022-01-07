
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int ref_count; } ;



void tep_ref(struct tep_handle *tep)
{
 tep->ref_count++;
}
