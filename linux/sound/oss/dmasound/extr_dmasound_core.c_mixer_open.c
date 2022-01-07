
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_6__ {TYPE_1__ mach; } ;
struct TYPE_5__ {int busy; } ;


 int ENODEV ;
 TYPE_3__ dmasound ;
 int dmasound_core_mutex ;
 TYPE_2__ mixer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static int mixer_open(struct inode *inode, struct file *file)
{
 mutex_lock(&dmasound_core_mutex);
 if (!try_module_get(dmasound.mach.owner)) {
  mutex_unlock(&dmasound_core_mutex);
  return -ENODEV;
 }
 mixer.busy = 1;
 mutex_unlock(&dmasound_core_mutex);
 return 0;
}
