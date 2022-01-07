
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_pcm179x {int current_rate; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int msleep (int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int update_pcm1796_deemph (struct oxygen*) ;
 int update_pcm1796_oversampling (struct oxygen*) ;

__attribute__((used)) static void set_pcm1796_params(struct oxygen *chip,
          struct snd_pcm_hw_params *params)
{
 struct xonar_pcm179x *data = chip->model_data;

 msleep(1);
 data->current_rate = params_rate(params);
 update_pcm1796_oversampling(chip);
 update_pcm1796_deemph(chip);
}
