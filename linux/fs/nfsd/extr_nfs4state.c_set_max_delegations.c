
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int max_delegations ;
 int nr_free_buffer_pages () ;

__attribute__((used)) static void
set_max_delegations(void)
{






 max_delegations = nr_free_buffer_pages() >> (20 - 2 - PAGE_SHIFT);
}
