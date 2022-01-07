
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int EINVAL ;
 int register_kprobe (struct kprobe*) ;
 int unregister_kprobes (struct kprobe**,int) ;

int register_kprobes(struct kprobe **kps, int num)
{
 int i, ret = 0;

 if (num <= 0)
  return -EINVAL;
 for (i = 0; i < num; i++) {
  ret = register_kprobe(kps[i]);
  if (ret < 0) {
   if (i > 0)
    unregister_kprobes(kps, i);
   break;
  }
 }
 return ret;
}
