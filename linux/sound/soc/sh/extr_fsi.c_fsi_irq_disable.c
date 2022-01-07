
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;


 int AB_IO (int,int ) ;
 int fsi_core_mask_set (struct fsi_master*,int ,int ,int ) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_get_port_shift (struct fsi_priv*,struct fsi_stream*) ;
 int iemsk ;
 int imsk ;

__attribute__((used)) static void fsi_irq_disable(struct fsi_priv *fsi, struct fsi_stream *io)
{
 u32 data = AB_IO(1, fsi_get_port_shift(fsi, io));
 struct fsi_master *master = fsi_get_master(fsi);

 fsi_core_mask_set(master, imsk, data, 0);
 fsi_core_mask_set(master, iemsk, data, 0);
}
