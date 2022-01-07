
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int flags; int list; scalar_t__ pages; } ;


 int SWP_VALID ;
 int SWP_WRITEOK ;
 int add_to_avail_list (struct swap_info_struct*) ;
 int assert_spin_locked (int *) ;
 int atomic_long_add (scalar_t__,int *) ;
 int nr_swap_pages ;
 int plist_add (int *,int *) ;
 int swap_active_head ;
 int swap_lock ;
 int total_swap_pages ;

__attribute__((used)) static void _enable_swap_info(struct swap_info_struct *p)
{
 p->flags |= SWP_WRITEOK | SWP_VALID;
 atomic_long_add(p->pages, &nr_swap_pages);
 total_swap_pages += p->pages;

 assert_spin_locked(&swap_lock);
 plist_add(&p->list, &swap_active_head);
 add_to_avail_list(p);
}
