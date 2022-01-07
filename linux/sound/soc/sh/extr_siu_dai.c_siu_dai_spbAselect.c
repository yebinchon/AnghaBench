
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct siu_port {int trdat; int stfifo; } ;
struct siu_firmware {size_t* yram0; TYPE_1__* spbpar; } ;
struct siu_info {int port_id; struct siu_firmware fw; } ;
struct TYPE_2__ {int ab1a; int ab0a; int dir; size_t event; int trdat; int stfifo; } ;


 struct siu_info* siu_i2s_data ;

__attribute__((used)) static void siu_dai_spbAselect(struct siu_port *port_info)
{
 struct siu_info *info = siu_i2s_data;
 struct siu_firmware *fw = &info->fw;
 u32 *ydef = fw->yram0;
 u32 idx;


 if (!info->port_id)
  idx = 1;
 else
  idx = 2;

 ydef[0] = (fw->spbpar[idx].ab1a << 16) |
  (fw->spbpar[idx].ab0a << 8) |
  (fw->spbpar[idx].dir << 7) | 3;
 ydef[1] = fw->yram0[1];
 ydef[2] = (16 / 2) << 24;
 ydef[3] = fw->yram0[3];
 ydef[4] = fw->yram0[4];
 ydef[7] = fw->spbpar[idx].event;
 port_info->stfifo |= fw->spbpar[idx].stfifo;
 port_info->trdat |= fw->spbpar[idx].trdat;
}
