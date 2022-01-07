
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int period_samples; } ;
struct fsi_priv {int dummy; } ;


 int fsi_count_fifo_err (struct fsi_priv*) ;
 int fsi_pointer_update (struct fsi_stream*,int ) ;
 struct fsi_priv* fsi_stream_to_priv (struct fsi_stream*) ;

__attribute__((used)) static void fsi_dma_complete(void *data)
{
 struct fsi_stream *io = (struct fsi_stream *)data;
 struct fsi_priv *fsi = fsi_stream_to_priv(io);

 fsi_pointer_update(io, io->period_samples);

 fsi_count_fifo_err(fsi);
}
