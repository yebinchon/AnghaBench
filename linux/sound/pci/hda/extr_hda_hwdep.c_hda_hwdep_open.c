
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_RAWIO ;
 int EACCES ;
 int capable (int ) ;

__attribute__((used)) static int hda_hwdep_open(struct snd_hwdep *hw, struct file *file)
{

 if (!capable(CAP_SYS_RAWIO))
  return -EACCES;

 return 0;
}
