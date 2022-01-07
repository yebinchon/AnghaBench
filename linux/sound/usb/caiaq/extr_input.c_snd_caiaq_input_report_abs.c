
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int input_dev; } ;


 int input_report_abs (int ,int,unsigned char const) ;

__attribute__((used)) static inline void snd_caiaq_input_report_abs(struct snd_usb_caiaqdev *cdev,
           int axis, const unsigned char *buf,
           int offset)
{
 input_report_abs(cdev->input_dev, axis,
    (buf[offset * 2] << 8) | buf[offset * 2 + 1]);
}
