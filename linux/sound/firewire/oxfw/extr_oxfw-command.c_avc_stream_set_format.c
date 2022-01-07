
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int dummy; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 int BIT (int) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int fcp_avc_transaction (struct fw_unit*,int*,unsigned int,int*,unsigned int,int) ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;
 int memcpy (int*,int*,unsigned int) ;

int avc_stream_set_format(struct fw_unit *unit, enum avc_general_plug_dir dir,
     unsigned int pid, u8 *format, unsigned int len)
{
 u8 *buf;
 int err;

 buf = kmalloc(len + 10, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 buf[0] = 0x00;
 buf[1] = 0xff;
 buf[2] = 0xbf;
 buf[3] = 0xc0;
 buf[4] = dir;
 buf[5] = 0x00;
 buf[6] = 0x00;
 buf[7] = 0xff & pid;
 buf[8] = 0xff;
 buf[9] = 0xff;
 memcpy(buf + 10, format, len);


 err = fcp_avc_transaction(unit, buf, len + 10, buf, len + 10,
      BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5) |
      BIT(6) | BIT(7) | BIT(8));
 if (err < 0)
  ;
 else if (err < len + 10)
  err = -EIO;
 else if (buf[0] == 0x08)
  err = -ENOSYS;
 else if (buf[0] == 0x0a)
  err = -EINVAL;
 else
  err = 0;

 kfree(buf);

 return err;
}
