
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hpi_adapter_obj {int dummy; } ;


 int HPI_DEBUG_LOG (int ,char*,int,int,int,int) ;
 int VERBOSE ;
 int boot_loader_read_mem32 (struct hpi_adapter_obj*,int,int) ;
 int boot_loader_write_mem32 (struct hpi_adapter_obj*,int,int,int) ;

__attribute__((used)) static u16 boot_loader_test_memory(struct hpi_adapter_obj *pao, int dsp_index,
 u32 start_address, u32 length)
{
 u32 i = 0, j = 0;
 u32 test_addr = 0;
 u32 test_data = 0, data = 0;

 length = 1000;




 i = 0;
 {
  test_addr = start_address + i * 4;
  test_data = 0x00000001;
  for (j = 0; j < 32; j++) {
   boot_loader_write_mem32(pao, dsp_index, test_addr,
    test_data);
   data = boot_loader_read_mem32(pao, dsp_index,
    test_addr);
   if (data != test_data) {
    HPI_DEBUG_LOG(VERBOSE,
     "Memtest error details  "
     "%08x %08x %08x %i\n", test_addr,
     test_data, data, dsp_index);
    return 1;
   }
   test_data = test_data << 1;
  }
 }




 for (i = 0; i < 100; i++) {
  test_addr = start_address + i * 4;
  test_data = 0xA5A55A5A;
  boot_loader_write_mem32(pao, dsp_index, test_addr, test_data);
  boot_loader_write_mem32(pao, dsp_index, test_addr + 4, 0);
  data = boot_loader_read_mem32(pao, dsp_index, test_addr);
  if (data != test_data) {
   HPI_DEBUG_LOG(VERBOSE,
    "Memtest error details  "
    "%08x %08x %08x %i\n", test_addr, test_data,
    data, dsp_index);
   return 1;
  }

  boot_loader_write_mem32(pao, dsp_index, test_addr, 0x0);
 }


 for (i = 0; i < length; i++) {
  test_addr = start_address + i * 4;
  boot_loader_write_mem32(pao, dsp_index, test_addr, 0x0);
 }
 return 0;
}
