
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dev; } ;
typedef int set_samplerate_seq ;
typedef int poll_ready_seq ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MICROBOOK_BUF_SIZE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int ) ;
 int msleep (int) ;
 int snd_usb_motu_microbookii_communicate (struct usb_device*,int*,int ,int*) ;

__attribute__((used)) static int snd_usb_motu_microbookii_boot_quirk(struct usb_device *dev)
{
 int err, actual_length, poll_attempts = 0;
 static const u8 set_samplerate_seq[] = { 0x00, 0x00, 0x00, 0x00,
       0x00, 0x00, 0x0b, 0x14,
       0x00, 0x00, 0x00, 0x01 };
 static const u8 poll_ready_seq[] = { 0x00, 0x04, 0x00, 0x00,
          0x00, 0x00, 0x0b, 0x18 };
 u8 *buf = kzalloc(MICROBOOK_BUF_SIZE, GFP_KERNEL);

 if (!buf)
  return -ENOMEM;

 dev_info(&dev->dev, "Waiting for MOTU Microbook II to boot up...\n");


 memcpy(buf, set_samplerate_seq, sizeof(set_samplerate_seq));
 actual_length = sizeof(set_samplerate_seq);
 err = snd_usb_motu_microbookii_communicate(dev, buf, MICROBOOK_BUF_SIZE,
         &actual_length);

 if (err < 0) {
  dev_err(&dev->dev,
   "failed setting the sample rate for Motu MicroBook II: %d\n",
   err);
  goto free_buf;
 }


 while (1) {
  if (++poll_attempts > 100) {
   dev_err(&dev->dev,
    "failed booting Motu MicroBook II: timeout\n");
   err = -ENODEV;
   goto free_buf;
  }

  memset(buf, 0, MICROBOOK_BUF_SIZE);
  memcpy(buf, poll_ready_seq, sizeof(poll_ready_seq));

  actual_length = sizeof(poll_ready_seq);
  err = snd_usb_motu_microbookii_communicate(
   dev, buf, MICROBOOK_BUF_SIZE, &actual_length);
  if (err < 0) {
   dev_err(&dev->dev,
    "failed booting Motu MicroBook II: communication error %d\n",
    err);
   goto free_buf;
  }







  if (actual_length == 12 && buf[actual_length - 1] == 1)
   break;

  msleep(100);
 }

 dev_info(&dev->dev, "MOTU MicroBook II ready\n");

free_buf:
 kfree(buf);
 return err;
}
