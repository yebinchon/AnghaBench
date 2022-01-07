
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int DODT ;
 int fsi_reg_write (struct fsi_priv*,int ,int ) ;

__attribute__((used)) static void fsi_pio_push32(struct fsi_priv *fsi, u8 *_buf, int samples)
{
 u32 *buf = (u32 *)_buf;
 int i;

 for (i = 0; i < samples; i++)
  fsi_reg_write(fsi, DODT, *(buf + i));
}
