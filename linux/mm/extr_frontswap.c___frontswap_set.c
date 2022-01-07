
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int frontswap_pages; int frontswap_map; } ;
typedef int pgoff_t ;


 int atomic_inc (int *) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static inline void __frontswap_set(struct swap_info_struct *sis,
       pgoff_t offset)
{
 set_bit(offset, sis->frontswap_map);
 atomic_inc(&sis->frontswap_pages);
}
