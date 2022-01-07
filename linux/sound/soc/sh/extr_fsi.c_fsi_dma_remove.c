
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int * chan; } ;
struct fsi_priv {int dummy; } ;


 int dma_release_channel (int *) ;
 int fsi_stream_stop (struct fsi_priv*,struct fsi_stream*) ;

__attribute__((used)) static int fsi_dma_remove(struct fsi_priv *fsi, struct fsi_stream *io)
{
 fsi_stream_stop(fsi, io);

 if (io->chan)
  dma_release_channel(io->chan);

 io->chan = ((void*)0);
 return 0;
}
