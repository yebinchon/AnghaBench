
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int lock; } ;
typedef int entries ;


 int nr_swapfiles ;
 int sort (int *,int,int,int ,int *) ;
 int spin_unlock (int *) ;
 int swap_entry_free (struct swap_info_struct*,int ) ;
 struct swap_info_struct* swap_info_get_cont (int ,struct swap_info_struct*) ;
 int swp_entry_cmp ;

void swapcache_free_entries(swp_entry_t *entries, int n)
{
 struct swap_info_struct *p, *prev;
 int i;

 if (n <= 0)
  return;

 prev = ((void*)0);
 p = ((void*)0);






 if (nr_swapfiles > 1)
  sort(entries, n, sizeof(entries[0]), swp_entry_cmp, ((void*)0));
 for (i = 0; i < n; ++i) {
  p = swap_info_get_cont(entries[i], prev);
  if (p)
   swap_entry_free(p, entries[i]);
  prev = p;
 }
 if (p)
  spin_unlock(&p->lock);
}
