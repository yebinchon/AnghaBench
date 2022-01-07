
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct fsi_priv {int dummy; } ;


 int DODT ;
 scalar_t__ fsi_is_enable_stream (struct fsi_priv*) ;
 int fsi_reg_write (struct fsi_priv*,int ,int) ;

__attribute__((used)) static void fsi_pio_push16(struct fsi_priv *fsi, u8 *_buf, int samples)
{
 int i;

 if (fsi_is_enable_stream(fsi)) {





  u32 *buf = (u32 *)_buf;

  for (i = 0; i < samples / 2; i++)
   fsi_reg_write(fsi, DODT, buf[i]);
 } else {

  u16 *buf = (u16 *)_buf;

  for (i = 0; i < samples; i++)
   fsi_reg_write(fsi, DODT, ((u32)*(buf + i) << 8));
 }
}
