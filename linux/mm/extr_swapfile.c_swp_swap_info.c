
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 struct swap_info_struct* swap_type_to_swap_info (int ) ;
 int swp_type (int ) ;

struct swap_info_struct *swp_swap_info(swp_entry_t entry)
{
 return swap_type_to_swap_info(swp_type(entry));
}
