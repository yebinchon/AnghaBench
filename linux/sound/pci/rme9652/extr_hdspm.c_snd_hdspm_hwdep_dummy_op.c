
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int snd_hdspm_hwdep_dummy_op(struct snd_hwdep *hw, struct file *file)
{

 return 0;
}
