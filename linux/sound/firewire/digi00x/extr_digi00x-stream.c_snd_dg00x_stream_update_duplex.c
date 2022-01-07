
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int rx_stream; int tx_stream; int rx_resources; int tx_resources; } ;


 int amdtp_stream_update (int *) ;
 int fw_iso_resources_update (int *) ;

void snd_dg00x_stream_update_duplex(struct snd_dg00x *dg00x)
{
 fw_iso_resources_update(&dg00x->tx_resources);
 fw_iso_resources_update(&dg00x->rx_resources);

 amdtp_stream_update(&dg00x->tx_stream);
 amdtp_stream_update(&dg00x->rx_stream);
}
