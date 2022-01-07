
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int dummy; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int BIT (int) ;
 unsigned int CIP_SFC_COUNT ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 unsigned int* amdtp_rate_table ;
 int fcp_avc_transaction (struct fw_unit*,int*,int,int*,int,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;

int avc_general_get_sig_fmt(struct fw_unit *unit, unsigned int *rate,
       enum avc_general_plug_dir dir,
       unsigned short pid)
{
 unsigned int sfc;
 u8 *buf;
 int err;

 buf = kzalloc(8, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 buf[0] = 0x01;
 buf[1] = 0xff;
 if (dir == AVC_GENERAL_PLUG_DIR_IN)
  buf[2] = 0x19;
 else
  buf[2] = 0x18;
 buf[3] = 0xff & pid;
 buf[4] = 0x90;
 buf[5] = 0xff;
 buf[6] = 0xff;
 buf[7] = 0xff;


 err = fcp_avc_transaction(unit, buf, 8, buf, 8,
      BIT(1) | BIT(2) | BIT(3) | BIT(4));
 if (err < 0)
  ;
 else if (err < 8)
  err = -EIO;
 else if (buf[0] == 0x08)
  err = -ENOSYS;
 else if (buf[0] == 0x0a)
  err = -EINVAL;
 else if (buf[0] == 0x0b)
  err = -EAGAIN;
 if (err < 0)
  goto end;


 sfc = 0x07 & buf[5];
 if (sfc >= CIP_SFC_COUNT) {
  err = -EAGAIN;
  goto end;
 }

 *rate = amdtp_rate_table[sfc];
 err = 0;
end:
 kfree(buf);
 return err;
}
