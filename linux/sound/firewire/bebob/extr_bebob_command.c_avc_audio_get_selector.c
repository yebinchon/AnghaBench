
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int dummy; } ;


 int BIT (int) ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int fcp_avc_transaction (struct fw_unit*,int*,int,int*,int,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;

int avc_audio_get_selector(struct fw_unit *unit, unsigned int subunit_id,
      unsigned int fb_id, unsigned int *num)
{
 u8 *buf;
 int err;

 buf = kzalloc(12, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 buf[0] = 0x01;
 buf[1] = 0x08 | (0x07 & subunit_id);
 buf[2] = 0xb8;
 buf[3] = 0x80;
 buf[4] = 0xff & fb_id;
 buf[5] = 0x10;
 buf[6] = 0x02;
 buf[7] = 0xff;
 buf[8] = 0x01;

 err = fcp_avc_transaction(unit, buf, 12, buf, 12,
      BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5) |
      BIT(6) | BIT(8));
 if (err < 0)
  ;
 else if (err < 9)
  err = -EIO;
 else if (buf[0] == 0x08)
  err = -ENOSYS;
 else if (buf[0] == 0x0a)
  err = -EINVAL;
 else if (buf[0] == 0x0b)
  err = -EAGAIN;
 if (err < 0)
  goto end;

 *num = buf[7];
 err = 0;
end:
 kfree(buf);
 return err;
}
