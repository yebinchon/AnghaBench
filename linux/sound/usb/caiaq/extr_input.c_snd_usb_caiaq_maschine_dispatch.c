
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int input_dev; } ;
typedef int __le16 ;


 int MASCHINE_PAD (unsigned int) ;
 unsigned int MASCHINE_PADS ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void snd_usb_caiaq_maschine_dispatch(struct snd_usb_caiaqdev *cdev,
     const unsigned char *buf,
     unsigned int len)
{
 unsigned int i, pad_id;
 __le16 *pressure = (__le16 *) buf;

 for (i = 0; i < MASCHINE_PADS; i++) {
  pad_id = le16_to_cpu(*pressure) >> 12;
  input_report_abs(cdev->input_dev, MASCHINE_PAD(pad_id),
     le16_to_cpu(*pressure) & 0xfff);
  pressure++;
 }

 input_sync(cdev->input_dev);
}
