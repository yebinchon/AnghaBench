
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;
struct device {int dummy; } ;


 int ACKMD_MASK ;
 int BPFMD_MASK ;
 int CKG1 ;
 int EINVAL ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*,int,...) ;
 int fsi_reg_mask_set (struct fsi_priv*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int fsi_clk_set_ackbpf(struct device *dev,
         struct fsi_priv *fsi,
         int ackmd, int bpfmd)
{
 u32 data = 0;


 if (bpfmd > ackmd) {
  dev_err(dev, "unsupported rate (%d/%d)\n", ackmd, bpfmd);
  return -EINVAL;
 }


 switch (ackmd) {
 case 512:
  data |= (0x0 << 12);
  break;
 case 256:
  data |= (0x1 << 12);
  break;
 case 128:
  data |= (0x2 << 12);
  break;
 case 64:
  data |= (0x3 << 12);
  break;
 case 32:
  data |= (0x4 << 12);
  break;
 default:
  dev_err(dev, "unsupported ackmd (%d)\n", ackmd);
  return -EINVAL;
 }


 switch (bpfmd) {
 case 32:
  data |= (0x0 << 8);
  break;
 case 64:
  data |= (0x1 << 8);
  break;
 case 128:
  data |= (0x2 << 8);
  break;
 case 256:
  data |= (0x3 << 8);
  break;
 case 512:
  data |= (0x4 << 8);
  break;
 case 16:
  data |= (0x7 << 8);
  break;
 default:
  dev_err(dev, "unsupported bpfmd (%d)\n", bpfmd);
  return -EINVAL;
 }

 dev_dbg(dev, "ACKMD/BPFMD = %d/%d\n", ackmd, bpfmd);

 fsi_reg_mask_set(fsi, CKG1, (ACKMD_MASK | BPFMD_MASK) , data);
 udelay(10);

 return 0;
}
