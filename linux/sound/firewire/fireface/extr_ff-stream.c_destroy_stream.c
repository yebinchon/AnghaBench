
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int dummy; } ;
struct snd_ff {int rx_resources; int tx_resources; struct amdtp_stream tx_stream; } ;


 int amdtp_stream_destroy (struct amdtp_stream*) ;
 int fw_iso_resources_destroy (int *) ;

__attribute__((used)) static void destroy_stream(struct snd_ff *ff, struct amdtp_stream *s)
{
 amdtp_stream_destroy(s);

 if (s == &ff->tx_stream)
  fw_iso_resources_destroy(&ff->tx_resources);
 else
  fw_iso_resources_destroy(&ff->rx_resources);
}
