
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;


 unsigned int GPIO_AK5385_DFS_DOUBLE ;
 int GPIO_AK5385_DFS_MASK ;
 unsigned int GPIO_AK5385_DFS_NORMAL ;
 unsigned int GPIO_AK5385_DFS_QUAD ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_write16_masked (struct oxygen*,int ,unsigned int,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static void set_ak5385_params(struct oxygen *chip,
         struct snd_pcm_hw_params *params)
{
 unsigned int value;

 if (params_rate(params) <= 54000)
  value = GPIO_AK5385_DFS_NORMAL;
 else if (params_rate(params) <= 108000)
  value = GPIO_AK5385_DFS_DOUBLE;
 else
  value = GPIO_AK5385_DFS_QUAD;
 oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
         value, GPIO_AK5385_DFS_MASK);
}
