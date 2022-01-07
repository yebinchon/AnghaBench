
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int buff_sample_capa; int buff_sample_pos; int fifo_sample_capa; } ;
struct fsi_priv {int dummy; } ;


 int fsi_get_current_fifo_samples (struct fsi_priv*,struct fsi_stream*) ;
 int fsi_pio_push16 ;
 int fsi_pio_push32 ;
 int fsi_pio_transfer (struct fsi_priv*,struct fsi_stream*,int ,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static int fsi_pio_push(struct fsi_priv *fsi, struct fsi_stream *io)
{
 int sample_residues;
 int sample_space;
 int samples;

 sample_residues = io->buff_sample_capa - io->buff_sample_pos;
 sample_space = io->fifo_sample_capa -
  fsi_get_current_fifo_samples(fsi, io);

 samples = min(sample_residues, sample_space);

 return fsi_pio_transfer(fsi, io,
      fsi_pio_push16,
      fsi_pio_push32,
      samples);
}
