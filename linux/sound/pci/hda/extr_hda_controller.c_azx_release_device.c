
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;


 int azx_stream (struct azx_dev*) ;
 int snd_hdac_stream_release (int ) ;

__attribute__((used)) static inline void azx_release_device(struct azx_dev *azx_dev)
{
 snd_hdac_stream_release(azx_stream(azx_dev));
}
