
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int dummy; } ;


 int __del_from_avail_list (struct swap_info_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_avail_lock ;

__attribute__((used)) static void del_from_avail_list(struct swap_info_struct *p)
{
 spin_lock(&swap_avail_lock);
 __del_from_avail_list(p);
 spin_unlock(&swap_avail_lock);
}
