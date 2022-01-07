
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int dummy; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 int BIT (int) ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOSYS ;
 int fcp_avc_transaction (struct fw_unit*,int*,int,int*,unsigned int,int) ;
 int memmove (int*,int*,int) ;

int avc_stream_get_format(struct fw_unit *unit,
     enum avc_general_plug_dir dir, unsigned int pid,
     u8 *buf, unsigned int *len, unsigned int eid)
{
 unsigned int subfunc;
 int err;

 if (eid == 0xff)
  subfunc = 0xc0;
 else
  subfunc = 0xc1;

 buf[0] = 0x01;
 buf[1] = 0xff;
 buf[2] = 0xbf;
 buf[3] = subfunc;
 buf[4] = dir;
 buf[5] = 0x00;
 buf[6] = 0x00;
 buf[7] = 0xff & pid;
 buf[8] = 0xff;
 buf[9] = 0xff;
 buf[10] = 0xff & eid;
 buf[11] = 0xff;


 err = fcp_avc_transaction(unit, buf, 12, buf, *len,
      BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5) |
      BIT(6) | BIT(7));
 if (err < 0)
  ;
 else if (err < 12)
  err = -EIO;
 else if (buf[0] == 0x08)
  err = -ENOSYS;
 else if (buf[0] == 0x0a)
  err = -EINVAL;
 else if (buf[0] == 0x0b)
  err = -EAGAIN;

 else if ((subfunc == 0xc1) && (buf[10] != eid))
  err = -EIO;
 if (err < 0)
  goto end;


 if (subfunc == 0xc0) {
  memmove(buf, buf + 10, err - 10);
  *len = err - 10;
 } else {
  memmove(buf, buf + 11, err - 11);
  *len = err - 11;
 }

 err = 0;
end:
 return err;
}
