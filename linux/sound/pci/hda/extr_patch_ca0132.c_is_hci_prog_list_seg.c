
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_image_seg {scalar_t__ chip_addr; } ;


 scalar_t__ g_chip_addr_magic_value ;

__attribute__((used)) static bool is_hci_prog_list_seg(const struct dsp_image_seg *p)
{
 return g_chip_addr_magic_value == p->chip_addr;
}
