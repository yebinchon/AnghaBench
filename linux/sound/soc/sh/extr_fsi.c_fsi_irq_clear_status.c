
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int capture; int playback; } ;
struct fsi_master {int dummy; } ;


 int AB_IO (int,int ) ;
 int fsi_core_mask_set (struct fsi_master*,int ,int ,int ) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_get_port_shift (struct fsi_priv*,int *) ;
 int int_st ;

__attribute__((used)) static void fsi_irq_clear_status(struct fsi_priv *fsi)
{
 u32 data = 0;
 struct fsi_master *master = fsi_get_master(fsi);

 data |= AB_IO(1, fsi_get_port_shift(fsi, &fsi->playback));
 data |= AB_IO(1, fsi_get_port_shift(fsi, &fsi->capture));


 fsi_core_mask_set(master, int_st, data, 0);
}
