
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvfree (int *) ;
 scalar_t__* nr_swapper_spaces ;
 int ** swapper_spaces ;

void exit_swap_address_space(unsigned int type)
{
 kvfree(swapper_spaces[type]);
 nr_swapper_spaces[type] = 0;
 swapper_spaces[type] = ((void*)0);
}
