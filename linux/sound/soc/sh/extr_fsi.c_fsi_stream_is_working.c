
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsi_stream {TYPE_1__* substream; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int lock; } ;
struct TYPE_2__ {scalar_t__ runtime; } ;


 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fsi_stream_is_working(struct fsi_priv *fsi,
     struct fsi_stream *io)
{
 struct fsi_master *master = fsi_get_master(fsi);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&master->lock, flags);
 ret = !!(io->substream && io->substream->runtime);
 spin_unlock_irqrestore(&master->lock, flags);

 return ret;
}
