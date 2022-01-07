
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int uerr_num; int oerr_num; } ;
struct TYPE_3__ {int uerr_num; int oerr_num; } ;
struct fsi_priv {TYPE_2__ capture; TYPE_1__ playback; } ;


 int DIFF_ST ;
 int DOFF_ST ;
 int ERR_OVER ;
 int ERR_UNDER ;
 int fsi_reg_read (struct fsi_priv*,int ) ;
 int fsi_reg_write (struct fsi_priv*,int ,int ) ;

__attribute__((used)) static void fsi_count_fifo_err(struct fsi_priv *fsi)
{
 u32 ostatus = fsi_reg_read(fsi, DOFF_ST);
 u32 istatus = fsi_reg_read(fsi, DIFF_ST);

 if (ostatus & ERR_OVER)
  fsi->playback.oerr_num++;

 if (ostatus & ERR_UNDER)
  fsi->playback.uerr_num++;

 if (istatus & ERR_OVER)
  fsi->capture.oerr_num++;

 if (istatus & ERR_UNDER)
  fsi->capture.uerr_num++;

 fsi_reg_write(fsi, DOFF_ST, 0);
 fsi_reg_write(fsi, DIFF_ST, 0);
}
