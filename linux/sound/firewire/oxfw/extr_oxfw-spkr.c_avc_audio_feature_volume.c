
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int device; } ;
typedef int s16 ;
typedef enum control_attribute { ____Placeholder_control_attribute } control_attribute ;
typedef enum control_action { ____Placeholder_control_action } control_action ;


 int CTL_READ ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int fcp_avc_transaction (struct fw_unit*,int*,int,int*,int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static int avc_audio_feature_volume(struct fw_unit *unit, u8 fb_id, s16 *value,
        unsigned int channel,
        enum control_attribute attribute,
        enum control_action action)
{
 u8 *buf;
 u8 response_ok;
 int err;

 buf = kmalloc(12, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (action == CTL_READ) {
  buf[0] = 0x01;
  response_ok = 0x0c;
 } else {
  buf[0] = 0x00;
  response_ok = 0x09;
 }
 buf[1] = 0x08;
 buf[2] = 0xb8;
 buf[3] = 0x81;
 buf[4] = fb_id;
 buf[5] = attribute;
 buf[6] = 0x02;
 buf[7] = channel;
 buf[8] = 0x02;
 buf[9] = 0x02;
 if (action == CTL_READ) {
  buf[10] = 0xff;
  buf[11] = 0xff;
 } else {
  buf[10] = *value >> 8;
  buf[11] = *value;
 }

 err = fcp_avc_transaction(unit, buf, 12, buf, 12, 0x3fe);
 if (err < 0)
  goto error;
 if (err < 12) {
  dev_err(&unit->device, "short FCP response\n");
  err = -EIO;
  goto error;
 }
 if (buf[0] != response_ok) {
  dev_err(&unit->device, "volume command failed\n");
  err = -EIO;
  goto error;
 }
 if (action == CTL_READ)
  *value = (buf[10] << 8) | buf[11];

 err = 0;

error:
 kfree(buf);

 return err;
}
