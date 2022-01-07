
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ plist_head_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_active_head ;
 int swap_lock ;

bool has_usable_swap(void)
{
 bool ret = 1;

 spin_lock(&swap_lock);
 if (plist_head_empty(&swap_active_head))
  ret = 0;
 spin_unlock(&swap_lock);
 return ret;
}
