
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int dummy; } ;
struct snd_dg00x {int rx_resources; int tx_resources; struct amdtp_stream tx_stream; } ;


 int amdtp_stream_destroy (struct amdtp_stream*) ;
 int fw_iso_resources_destroy (int *) ;

__attribute__((used)) static void destroy_stream(struct snd_dg00x *dg00x, struct amdtp_stream *s)
{
 amdtp_stream_destroy(s);

 if (s == &dg00x->tx_stream)
  fw_iso_resources_destroy(&dg00x->tx_resources);
 else
  fw_iso_resources_destroy(&dg00x->rx_resources);
}
