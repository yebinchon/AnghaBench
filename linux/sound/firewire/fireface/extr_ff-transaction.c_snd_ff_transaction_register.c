
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int * rx_midi_work; } ;


 int EAGAIN ;
 int EBUSY ;
 int INIT_WORK (int *,int ) ;
 int allocate_own_address (struct snd_ff*,int) ;
 int snd_ff_transaction_reregister (struct snd_ff*) ;
 int transmit_midi0_msg ;
 int transmit_midi1_msg ;

int snd_ff_transaction_register(struct snd_ff *ff)
{
 int i, err;





 for (i = 0; i < 0xffff; i++) {
  err = allocate_own_address(ff, i);
  if (err != -EBUSY && err != -EAGAIN)
   break;
 }
 if (err < 0)
  return err;

 err = snd_ff_transaction_reregister(ff);
 if (err < 0)
  return err;

 INIT_WORK(&ff->rx_midi_work[0], transmit_midi0_msg);
 INIT_WORK(&ff->rx_midi_work[1], transmit_midi1_msg);

 return 0;
}
