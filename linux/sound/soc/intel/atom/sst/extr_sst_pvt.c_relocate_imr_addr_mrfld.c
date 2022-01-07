
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MRFLD_FW_VIRTUAL_BASE ;

u32 relocate_imr_addr_mrfld(u32 base_addr)
{


 base_addr = MRFLD_FW_VIRTUAL_BASE + (base_addr % (512 * 1024 * 1024));
 return base_addr;
}
