
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lru_add_drain () ;

int migrate_prep_local(void)
{
 lru_add_drain();

 return 0;
}
