
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int tep_free (struct tep_handle*) ;

void tep_unref(struct tep_handle *tep)
{
 tep_free(tep);
}
