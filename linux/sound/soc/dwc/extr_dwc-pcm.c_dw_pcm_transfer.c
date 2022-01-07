
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct dw_i2s_dev {unsigned int (* tx_fn ) (struct dw_i2s_dev*,int ,unsigned int,int*) ;unsigned int (* rx_fn ) (struct dw_i2s_dev*,int ,unsigned int,int*) ;int rx_ptr; int tx_ptr; int rx_substream; int tx_substream; } ;


 unsigned int READ_ONCE (int ) ;
 int cmpxchg (int *,unsigned int,unsigned int) ;
 struct snd_pcm_substream* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 unsigned int stub1 (struct dw_i2s_dev*,int ,unsigned int,int*) ;
 unsigned int stub2 (struct dw_i2s_dev*,int ,unsigned int,int*) ;

__attribute__((used)) static void dw_pcm_transfer(struct dw_i2s_dev *dev, bool push)
{
 struct snd_pcm_substream *substream;
 bool active, period_elapsed;

 rcu_read_lock();
 if (push)
  substream = rcu_dereference(dev->tx_substream);
 else
  substream = rcu_dereference(dev->rx_substream);
 active = substream && snd_pcm_running(substream);
 if (active) {
  unsigned int ptr;
  unsigned int new_ptr;

  if (push) {
   ptr = READ_ONCE(dev->tx_ptr);
   new_ptr = dev->tx_fn(dev, substream->runtime, ptr,
     &period_elapsed);
   cmpxchg(&dev->tx_ptr, ptr, new_ptr);
  } else {
   ptr = READ_ONCE(dev->rx_ptr);
   new_ptr = dev->rx_fn(dev, substream->runtime, ptr,
     &period_elapsed);
   cmpxchg(&dev->rx_ptr, ptr, new_ptr);
  }

  if (period_elapsed)
   snd_pcm_period_elapsed(substream);
 }
 rcu_read_unlock();
}
