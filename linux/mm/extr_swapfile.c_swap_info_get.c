
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int lock; } ;


 struct swap_info_struct* _swap_info_get (int ) ;
 int spin_lock (int *) ;

__attribute__((used)) static struct swap_info_struct *swap_info_get(swp_entry_t entry)
{
 struct swap_info_struct *p;

 p = _swap_info_get(entry);
 if (p)
  spin_lock(&p->lock);
 return p;
}
