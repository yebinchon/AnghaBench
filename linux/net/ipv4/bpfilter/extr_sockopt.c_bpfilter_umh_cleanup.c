
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umh_info {scalar_t__ pid; int pipe_from_umh; int pipe_to_umh; } ;
struct TYPE_2__ {int stop; int lock; } ;


 TYPE_1__ bpfilter_ops ;
 int fput (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bpfilter_umh_cleanup(struct umh_info *info)
{
 mutex_lock(&bpfilter_ops.lock);
 bpfilter_ops.stop = 1;
 fput(info->pipe_to_umh);
 fput(info->pipe_from_umh);
 info->pid = 0;
 mutex_unlock(&bpfilter_ops.lock);
}
