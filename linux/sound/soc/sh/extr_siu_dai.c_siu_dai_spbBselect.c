
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct siu_port {int trdat; int stfifo; } ;
struct siu_firmware {size_t* yram0; TYPE_1__* spbpar; } ;
struct siu_info {int port_id; struct siu_firmware fw; } ;
struct TYPE_2__ {int ab1a; int ab0a; size_t event; int trdat; int stfifo; } ;


 struct siu_info* siu_i2s_data ;

__attribute__((used)) static void siu_dai_spbBselect(struct siu_port *port_info)
{
 struct siu_info *info = siu_i2s_data;
 struct siu_firmware *fw = &info->fw;
 u32 *ydef = fw->yram0;
 u32 idx;


 if (!info->port_id)
  idx = 7;
 else
  idx = 8;

 ydef[5] = (fw->spbpar[idx].ab1a << 16) |
  (fw->spbpar[idx].ab0a << 8) | 1;
 ydef[6] = fw->spbpar[idx].event;
 port_info->stfifo |= fw->spbpar[idx].stfifo;
 port_info->trdat |= fw->spbpar[idx].trdat;
}
