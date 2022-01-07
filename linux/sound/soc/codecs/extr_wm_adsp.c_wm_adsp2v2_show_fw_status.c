
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int dummy; } ;


 unsigned int ADSP2V2_SCRATCH0_1 ;
 unsigned int ADSP2V2_SCRATCH2_3 ;
 int ARRAY_SIZE (unsigned int*) ;
 int adsp_dbg (struct wm_adsp*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int wm_adsp_read_fw_status (struct wm_adsp*,int ,unsigned int*) ;

__attribute__((used)) static void wm_adsp2v2_show_fw_status(struct wm_adsp *dsp)
{
 unsigned int offs[] = { ADSP2V2_SCRATCH0_1, ADSP2V2_SCRATCH2_3 };

 wm_adsp_read_fw_status(dsp, ARRAY_SIZE(offs), offs);

 adsp_dbg(dsp, "FW SCRATCH 0:0x%x 1:0x%x 2:0x%x 3:0x%x\n",
   offs[0] & 0xFFFF, offs[0] >> 16,
   offs[1] & 0xFFFF, offs[1] >> 16);
}
