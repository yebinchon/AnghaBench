
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;


 TYPE_1__ crashk_res ;
 int kexec_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t resource_size (TYPE_1__*) ;

size_t crash_get_memory_size(void)
{
 size_t size = 0;

 mutex_lock(&kexec_mutex);
 if (crashk_res.end != crashk_res.start)
  size = resource_size(&crashk_res);
 mutex_unlock(&kexec_mutex);
 return size;
}
