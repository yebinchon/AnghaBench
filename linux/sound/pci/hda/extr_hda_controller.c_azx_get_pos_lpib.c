
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;


 int azx_stream (struct azx_dev*) ;
 unsigned int snd_hdac_stream_get_pos_lpib (int ) ;

unsigned int azx_get_pos_lpib(struct azx *chip, struct azx_dev *azx_dev)
{
 return snd_hdac_stream_get_pos_lpib(azx_stream(azx_dev));
}
