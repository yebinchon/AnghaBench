
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbri {int lock; } ;


 int D_SDP_FIXED ;
 int D_SDP_FROM_SER ;
 int D_SDP_MEM ;
 int D_SDP_MSB ;
 int D_SDP_TO_SER ;
 int dbri_cmdwait (struct snd_dbri*) ;
 int setup_pipe (struct snd_dbri*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cs4215_setup_pipes(struct snd_dbri *dbri)
{
 unsigned long flags;

 spin_lock_irqsave(&dbri->lock, flags);
 setup_pipe(dbri, 4, D_SDP_MEM | D_SDP_TO_SER | D_SDP_MSB);
 setup_pipe(dbri, 20, D_SDP_FIXED | D_SDP_TO_SER | D_SDP_MSB);
 setup_pipe(dbri, 6, D_SDP_MEM | D_SDP_FROM_SER | D_SDP_MSB);
 setup_pipe(dbri, 21, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);

 setup_pipe(dbri, 17, D_SDP_FIXED | D_SDP_TO_SER | D_SDP_MSB);
 setup_pipe(dbri, 18, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);
 setup_pipe(dbri, 19, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);
 spin_unlock_irqrestore(&dbri->lock, flags);

 dbri_cmdwait(dbri);
}
