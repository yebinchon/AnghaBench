
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {scalar_t__ frontswap_map; } ;
typedef int pgoff_t ;


 int test_bit (int ,scalar_t__) ;

bool __frontswap_test(struct swap_info_struct *sis,
    pgoff_t offset)
{
 if (sis->frontswap_map)
  return test_bit(offset, sis->frontswap_map);
 return 0;
}
