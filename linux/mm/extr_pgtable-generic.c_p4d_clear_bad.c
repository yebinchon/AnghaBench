
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p4d_t ;


 int p4d_ERROR (int ) ;
 int p4d_clear (int *) ;

void p4d_clear_bad(p4d_t *p4d)
{
 p4d_ERROR(*p4d);
 p4d_clear(p4d);
}
