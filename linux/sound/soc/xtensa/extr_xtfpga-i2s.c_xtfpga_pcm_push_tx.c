
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {unsigned int (* tx_fn ) (struct xtfpga_i2s*,int ,unsigned int) ;int tx_ptr; int tx_substream; } ;
struct snd_pcm_substream {int runtime; } ;


 unsigned int READ_ONCE (int ) ;
 int cmpxchg (int *,unsigned int,unsigned int) ;
 struct snd_pcm_substream* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 unsigned int stub1 (struct xtfpga_i2s*,int ,unsigned int) ;

__attribute__((used)) static bool xtfpga_pcm_push_tx(struct xtfpga_i2s *i2s)
{
 struct snd_pcm_substream *tx_substream;
 bool tx_active;

 rcu_read_lock();
 tx_substream = rcu_dereference(i2s->tx_substream);
 tx_active = tx_substream && snd_pcm_running(tx_substream);
 if (tx_active) {
  unsigned tx_ptr = READ_ONCE(i2s->tx_ptr);
  unsigned new_tx_ptr = i2s->tx_fn(i2s, tx_substream->runtime,
       tx_ptr);

  cmpxchg(&i2s->tx_ptr, tx_ptr, new_tx_ptr);
 }
 rcu_read_unlock();

 return tx_active;
}
