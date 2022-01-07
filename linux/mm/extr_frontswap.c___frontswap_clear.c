
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int frontswap_pages; int frontswap_map; } ;
typedef int pgoff_t ;


 int atomic_dec (int *) ;
 int clear_bit (int ,int ) ;

__attribute__((used)) static inline void __frontswap_clear(struct swap_info_struct *sis,
         pgoff_t offset)
{
 clear_bit(offset, sis->frontswap_map);
 atomic_dec(&sis->frontswap_pages);
}
