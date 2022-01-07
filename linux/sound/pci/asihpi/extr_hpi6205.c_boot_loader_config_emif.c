
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hpi_adapter_obj {int dummy; } ;


 int C6713_EMIF_CE0 ;
 int C6713_EMIF_GCTL ;
 int C6713_EMIF_SDRAMCTL ;
 int C6713_EMIF_SDRAMEXT ;
 int C6713_EMIF_SDRAMTIMING ;
 int ERROR ;
 int HPI6205_ERROR_C6713_HPIA ;
 int HPI6205_ERROR_C6713_HPIC ;
 int HPI6205_ERROR_C6713_PLL ;
 int HPI6205_ERROR_DSP_EMIF1 ;
 int HPI6205_ERROR_DSP_EMIF2 ;
 int HPI6205_ERROR_DSP_EMIF3 ;
 int HPI6205_ERROR_DSP_EMIF4 ;
 int HPIAH_ADDR ;
 int HPIAL_ADDR ;
 int HPICH_ADDR ;
 int HPICL_ADDR ;
 int HPI_DEBUG_LOG (int ,char*,int,int) ;
 long MTYPE_OFS ;
 long RH_OFS ;
 long RST_OFS ;
 long RS_OFS ;
 long WH_OFS ;
 long WST_OFS ;
 long WS_OFS ;
 int boot_loader_read_mem32 (struct hpi_adapter_obj*,int,int) ;
 int boot_loader_write_mem32 (struct hpi_adapter_obj*,int,int,int) ;
 int hpios_delay_micro_seconds (int) ;

__attribute__((used)) static u16 boot_loader_config_emif(struct hpi_adapter_obj *pao, int dsp_index)
{
 if (dsp_index == 0) {
  u32 setting;
  boot_loader_write_mem32(pao, dsp_index, 0x01800000, 0x3779);
  setting = 0x00000030;
  boot_loader_write_mem32(pao, dsp_index, 0x01800008, setting);
  if (setting != boot_loader_read_mem32(pao, dsp_index,
    0x01800008))
   return HPI6205_ERROR_DSP_EMIF1;





  setting =
   (1L << 28) | (63L << 22) | (1L << 20) |
   (1L << 16) | (63L << 8) | (1L << 0) |
   (2L << 4);
  boot_loader_write_mem32(pao, dsp_index, 0x01800004, setting);
  if (setting != boot_loader_read_mem32(pao, dsp_index,
    0x01800004))
   return HPI6205_ERROR_DSP_EMIF2;




  setting =
   (1L << 28) | (28L << 22) | (1L << 20) |
   (1L << 16) | (63L << 8) | (1L << 0) |
   (2L << 4);
  boot_loader_write_mem32(pao, dsp_index, 0x01800010, setting);
  if (setting != boot_loader_read_mem32(pao, dsp_index,
    0x01800010))
   return HPI6205_ERROR_DSP_EMIF3;



  setting =
   (1L << 28) | (10L << 22) | (1L << 20) |
   (1L << 16) | (10L << 8) | (1L << 0) |
   (2L << 4);
  boot_loader_write_mem32(pao, dsp_index, 0x01800014, setting);
  if (setting != boot_loader_read_mem32(pao, dsp_index,
    0x01800014))
   return HPI6205_ERROR_DSP_EMIF4;



  boot_loader_write_mem32(pao, dsp_index, 0x01800018,
   0x07117000);



  boot_loader_write_mem32(pao, dsp_index, 0x0180001C,
   0x00000410);

 } else if (dsp_index == 1) {

  u32 write_data = 0, read_data = 0, i = 0;


  write_data = 1;
  boot_loader_write_mem32(pao, 0, HPICL_ADDR, write_data);
  boot_loader_write_mem32(pao, 0, HPICH_ADDR, write_data);

  read_data =
   0xFFF7 & boot_loader_read_mem32(pao, 0, HPICL_ADDR);
  if (write_data != read_data) {
   HPI_DEBUG_LOG(ERROR, "HPICL %x %x\n", write_data,
    read_data);
   return HPI6205_ERROR_C6713_HPIC;
  }

  write_data = 1;
  for (i = 0; i < 32; i++) {
   boot_loader_write_mem32(pao, 0, HPIAL_ADDR,
    write_data);
   boot_loader_write_mem32(pao, 0, HPIAH_ADDR,
    (write_data >> 16));
   read_data =
    0xFFFF & boot_loader_read_mem32(pao, 0,
    HPIAL_ADDR);
   read_data =
    read_data | ((0xFFFF &
     boot_loader_read_mem32(pao, 0,
      HPIAH_ADDR))
    << 16);
   if (read_data != write_data) {
    HPI_DEBUG_LOG(ERROR, "HPIA %x %x\n",
     write_data, read_data);
    return HPI6205_ERROR_C6713_HPIA;
   }
   write_data = write_data << 1;
  }
  boot_loader_write_mem32(pao, dsp_index, 0x01B7C100, 0x0000);
  hpios_delay_micro_seconds(1000);

  boot_loader_write_mem32(pao, dsp_index, 0x01B7C120, 0x8002);

  boot_loader_write_mem32(pao, dsp_index, 0x01B7C11C, 0x8001);

  boot_loader_write_mem32(pao, dsp_index, 0x01B7C118, 0x8000);
  hpios_delay_micro_seconds(1000);



  boot_loader_write_mem32(pao, 0, (0x018C0024L), 0x00002A0A);

  boot_loader_write_mem32(pao, dsp_index, 0x01B7C100, 0x0001);
  hpios_delay_micro_seconds(1000);

  boot_loader_write_mem32(pao, 0, (0x018C0024L), 0x00002A02);



  boot_loader_write_mem32(pao, 0, 0x01800004,
   (1L << 28) | (8L << 22) | (1L << 20) |
   (1L << 16) | (12L << 8) | (1L << 0) |
   (2L << 4));

  hpios_delay_micro_seconds(1000);



  if ((boot_loader_read_mem32(pao, dsp_index, 0x01B7C100) & 0xF)
   != 0x0001) {
   return HPI6205_ERROR_C6713_PLL;
  }


  boot_loader_write_mem32(pao, dsp_index, C6713_EMIF_GCTL,
   0x000034A8);
  boot_loader_write_mem32(pao, dsp_index, C6713_EMIF_CE0,
   0x00000030);
  boot_loader_write_mem32(pao, dsp_index, C6713_EMIF_SDRAMEXT,
   0x001BDF29);
  boot_loader_write_mem32(pao, dsp_index, C6713_EMIF_SDRAMCTL,
   0x47116000);




  boot_loader_write_mem32(pao, dsp_index,
   C6713_EMIF_SDRAMTIMING, 0x00000410);

  hpios_delay_micro_seconds(1000);
 } else if (dsp_index == 2) {

 }

 return 0;
}
