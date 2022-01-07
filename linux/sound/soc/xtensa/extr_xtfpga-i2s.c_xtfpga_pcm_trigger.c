
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int tx_substream; int tx_ptr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct xtfpga_i2s* private_data; } ;


 int EINVAL ;






 int WRITE_ONCE (int ,int ) ;
 int rcu_assign_pointer (int ,struct snd_pcm_substream*) ;
 int xtfpga_pcm_refill_fifo (struct xtfpga_i2s*) ;

__attribute__((used)) static int xtfpga_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 int ret = 0;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct xtfpga_i2s *i2s = runtime->private_data;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  WRITE_ONCE(i2s->tx_ptr, 0);
  rcu_assign_pointer(i2s->tx_substream, substream);
  xtfpga_pcm_refill_fifo(i2s);
  break;

 case 129:
 case 128:
 case 133:
  rcu_assign_pointer(i2s->tx_substream, ((void*)0));
  break;

 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
