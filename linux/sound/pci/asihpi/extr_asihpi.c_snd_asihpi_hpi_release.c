
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int asihpi_hpi_release (struct file*) ;
 scalar_t__ enable_hpi_hwdep ;

__attribute__((used)) static int snd_asihpi_hpi_release(struct snd_hwdep *hw, struct file *file)
{
 if (enable_hpi_hwdep)
  return asihpi_hpi_release(file);
 else
  return -ENODEV;
}
