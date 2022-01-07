
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmfw_id_hdr {int ver; int id; } ;
struct wm_adsp {int fw_id_version; void* fw_id; } ;


 int adsp_info (struct wm_adsp*,char*,void*,int,int,int,int) ;
 void* be32_to_cpu (int ) ;

__attribute__((used)) static void wmfw_parse_id_header(struct wm_adsp *dsp,
     struct wmfw_id_hdr *fw, int nalgs)
{
 dsp->fw_id = be32_to_cpu(fw->id);
 dsp->fw_id_version = be32_to_cpu(fw->ver);

 adsp_info(dsp, "Firmware: %x v%d.%d.%d, %d algorithms\n",
    dsp->fw_id, (dsp->fw_id_version & 0xff0000) >> 16,
    (dsp->fw_id_version & 0xff00) >> 8, dsp->fw_id_version & 0xff,
    nalgs);
}
