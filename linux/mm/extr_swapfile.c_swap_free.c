
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 int __swap_entry_free (struct swap_info_struct*,int ,int) ;
 struct swap_info_struct* _swap_info_get (int ) ;

void swap_free(swp_entry_t entry)
{
 struct swap_info_struct *p;

 p = _swap_info_get(entry);
 if (p)
  __swap_entry_free(p, entry, 1);
}
