
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delayed_fput (int *) ;

void flush_delayed_fput(void)
{
 delayed_fput(((void*)0));
}
