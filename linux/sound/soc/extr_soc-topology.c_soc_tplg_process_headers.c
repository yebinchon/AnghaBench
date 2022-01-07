
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ pass; int dev; scalar_t__ hdr_pos; TYPE_1__* fw; } ;
struct snd_soc_tplg_hdr {int payload_size; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ SOC_TPLG_PASS_END ;
 scalar_t__ SOC_TPLG_PASS_START ;
 int dev_err (int ,char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int soc_tplg_dapm_complete (struct soc_tplg*) ;
 int soc_tplg_is_eof (struct soc_tplg*) ;
 int soc_tplg_load_header (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_valid_header (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;

__attribute__((used)) static int soc_tplg_process_headers(struct soc_tplg *tplg)
{
 struct snd_soc_tplg_hdr *hdr;
 int ret;

 tplg->pass = SOC_TPLG_PASS_START;


 while (tplg->pass <= SOC_TPLG_PASS_END) {

  tplg->hdr_pos = tplg->fw->data;
  hdr = (struct snd_soc_tplg_hdr *)tplg->hdr_pos;

  while (!soc_tplg_is_eof(tplg)) {


   ret = soc_valid_header(tplg, hdr);
   if (ret < 0)
    return ret;
   else if (ret == 0)
    break;


   ret = soc_tplg_load_header(tplg, hdr);
   if (ret < 0)
    return ret;


   tplg->hdr_pos += le32_to_cpu(hdr->payload_size) +
    sizeof(struct snd_soc_tplg_hdr);
   hdr = (struct snd_soc_tplg_hdr *)tplg->hdr_pos;
  }


  tplg->pass++;
 }


 ret = soc_tplg_dapm_complete(tplg);
 if (ret < 0)
  dev_err(tplg->dev,
   "ASoC: failed to initialise DAPM from Firmware\n");

 return ret;
}
