
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __init_state ;
 scalar_t__ done ;
 int init_preload () ;

__attribute__((used)) static void try_init_preload(void)
{
 if (__init_state != done)
  init_preload();
}
