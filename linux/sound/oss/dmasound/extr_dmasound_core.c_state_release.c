
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
struct TYPE_5__ {scalar_t__ busy; } ;


 TYPE_3__ dmasound ;
 int dmasound_core_mutex ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ state ;

__attribute__((used)) static int state_release(struct inode *inode, struct file *file)
{
 mutex_lock(&dmasound_core_mutex);
 state.busy = 0;
 module_put(dmasound.mach.owner);
 mutex_unlock(&dmasound_core_mutex);
 return 0;
}
