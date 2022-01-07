
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int asihpi_hpi_ioctl (struct file*,unsigned int,unsigned long) ;
 scalar_t__ enable_hpi_hwdep ;

__attribute__((used)) static int snd_asihpi_hpi_ioctl(struct snd_hwdep *hw, struct file *file,
    unsigned int cmd, unsigned long arg)
{
 if (enable_hpi_hwdep)
  return asihpi_hpi_ioctl(file, cmd, arg);
 else
  return -ENODEV;
}
