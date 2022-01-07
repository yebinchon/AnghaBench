
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
 int NOTIFY_OK ;
 int notifier_from_errno (int) ;
 int slab_mem_going_offline_callback (void*) ;
 int slab_mem_going_online_callback (void*) ;
 int slab_mem_offline_callback (void*) ;

__attribute__((used)) static int slab_memory_callback(struct notifier_block *self,
    unsigned long action, void *arg)
{
 int ret = 0;

 switch (action) {
 case 130:
  ret = slab_mem_going_online_callback(arg);
  break;
 case 131:
  ret = slab_mem_going_offline_callback(arg);
  break;
 case 129:
 case 132:
  slab_mem_offline_callback(arg);
  break;
 case 128:
 case 133:
  break;
 }
 if (ret)
  ret = notifier_from_errno(ret);
 else
  ret = NOTIFY_OK;
 return ret;
}
