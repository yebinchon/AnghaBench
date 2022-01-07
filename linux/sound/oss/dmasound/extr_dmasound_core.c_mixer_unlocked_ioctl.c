
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct file {int dummy; } ;


 int dmasound_core_mutex ;
 int mixer_ioctl (struct file*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long mixer_unlocked_ioctl(struct file *file, u_int cmd, u_long arg)
{
 int ret;

 mutex_lock(&dmasound_core_mutex);
 ret = mixer_ioctl(file, cmd, arg);
 mutex_unlock(&dmasound_core_mutex);

 return ret;
}
