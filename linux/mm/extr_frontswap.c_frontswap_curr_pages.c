
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __frontswap_curr_pages () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_lock ;

unsigned long frontswap_curr_pages(void)
{
 unsigned long totalpages = 0;

 spin_lock(&swap_lock);
 totalpages = __frontswap_curr_pages();
 spin_unlock(&swap_lock);

 return totalpages;
}
