
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_stream {int fifo_sample_capa; } ;
struct fsi_priv {int chan_num; } ;
struct fsi_master {int dummy; } ;
struct device {int dummy; } ;


 int DIFF_CTL ;
 int DOFF_CTL ;
 int FIFO_CLR ;
 int FIFO_SZ ;
 int FIFO_SZ_MASK ;
 int IRQ_HALF ;
 int dev_dbg (struct device*,char*,int,...) ;
 int fsi_frame2sample (struct fsi_priv*,int) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_get_port_shift (struct fsi_priv*,struct fsi_stream*) ;
 int fsi_master_read (struct fsi_master*,int ) ;
 int fsi_reg_mask_set (struct fsi_priv*,int ,int ,int ) ;
 int fsi_reg_write (struct fsi_priv*,int ,int ) ;
 int fsi_stream_is_play (struct fsi_priv*,struct fsi_stream*) ;

__attribute__((used)) static void fsi_fifo_init(struct fsi_priv *fsi,
     struct fsi_stream *io,
     struct device *dev)
{
 struct fsi_master *master = fsi_get_master(fsi);
 int is_play = fsi_stream_is_play(fsi, io);
 u32 shift, i;
 int frame_capa;


 shift = fsi_master_read(master, FIFO_SZ);
 shift >>= fsi_get_port_shift(fsi, io);
 shift &= FIFO_SZ_MASK;
 frame_capa = 256 << shift;
 dev_dbg(dev, "fifo = %d words\n", frame_capa);
 for (i = 1; i < fsi->chan_num; i <<= 1)
  frame_capa >>= 1;
 dev_dbg(dev, "%d channel %d store\n",
  fsi->chan_num, frame_capa);

 io->fifo_sample_capa = fsi_frame2sample(fsi, frame_capa);





 if (is_play) {
  fsi_reg_write(fsi, DOFF_CTL, IRQ_HALF);
  fsi_reg_mask_set(fsi, DOFF_CTL, FIFO_CLR, FIFO_CLR);
 } else {
  fsi_reg_write(fsi, DIFF_CTL, IRQ_HALF);
  fsi_reg_mask_set(fsi, DIFF_CTL, FIFO_CLR, FIFO_CLR);
 }
}
