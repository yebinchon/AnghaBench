
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct fsi_priv {int dummy; } ;


 int DIDT ;
 int fsi_reg_read (struct fsi_priv*,int ) ;

__attribute__((used)) static void fsi_pio_pop16(struct fsi_priv *fsi, u8 *_buf, int samples)
{
 u16 *buf = (u16 *)_buf;
 int i;

 for (i = 0; i < samples; i++)
  *(buf + i) = (u16)(fsi_reg_read(fsi, DIDT) >> 8);
}
