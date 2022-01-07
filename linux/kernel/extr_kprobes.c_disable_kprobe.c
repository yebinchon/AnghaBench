
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 scalar_t__ IS_ERR (struct kprobe*) ;
 int PTR_ERR (struct kprobe*) ;
 struct kprobe* __disable_kprobe (struct kprobe*) ;
 int kprobe_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int disable_kprobe(struct kprobe *kp)
{
 int ret = 0;
 struct kprobe *p;

 mutex_lock(&kprobe_mutex);


 p = __disable_kprobe(kp);
 if (IS_ERR(p))
  ret = PTR_ERR(p);

 mutex_unlock(&kprobe_mutex);
 return ret;
}
