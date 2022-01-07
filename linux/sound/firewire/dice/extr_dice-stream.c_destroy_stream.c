
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {struct fw_iso_resources* rx_resources; struct amdtp_stream* rx_stream; struct fw_iso_resources* tx_resources; struct amdtp_stream* tx_stream; } ;
struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;


 int AMDTP_IN_STREAM ;
 int amdtp_stream_destroy (struct amdtp_stream*) ;
 int fw_iso_resources_destroy (struct fw_iso_resources*) ;

__attribute__((used)) static void destroy_stream(struct snd_dice *dice,
      enum amdtp_stream_direction dir,
      unsigned int index)
{
 struct amdtp_stream *stream;
 struct fw_iso_resources *resources;

 if (dir == AMDTP_IN_STREAM) {
  stream = &dice->tx_stream[index];
  resources = &dice->tx_resources[index];
 } else {
  stream = &dice->rx_stream[index];
  resources = &dice->rx_resources[index];
 }

 amdtp_stream_destroy(stream);
 fw_iso_resources_destroy(resources);
}
