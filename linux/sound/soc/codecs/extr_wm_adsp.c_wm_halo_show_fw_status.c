
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int HALO_SCRATCH1 ;
 unsigned int HALO_SCRATCH2 ;
 unsigned int HALO_SCRATCH3 ;
 unsigned int HALO_SCRATCH4 ;
 int adsp_dbg (struct wm_adsp*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int wm_adsp_read_fw_status (struct wm_adsp*,int ,unsigned int*) ;

__attribute__((used)) static void wm_halo_show_fw_status(struct wm_adsp *dsp)
{
 unsigned int offs[] = {
  HALO_SCRATCH1, HALO_SCRATCH2, HALO_SCRATCH3, HALO_SCRATCH4,
 };

 wm_adsp_read_fw_status(dsp, ARRAY_SIZE(offs), offs);

 adsp_dbg(dsp, "FW SCRATCH 0:0x%x 1:0x%x 2:0x%x 3:0x%x\n",
   offs[0], offs[1], offs[2], offs[3]);
}
